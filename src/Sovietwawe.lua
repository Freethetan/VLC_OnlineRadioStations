 --[[
Copyright (C) 2018 roland1

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
--]]
-----------------------------------------------------------
local MainURL="http://somafm.com/"
local ImgBaseUrl=MainURL.."img/"
local baseUrl=MainURL

function descriptor()
	return {
		title = "SovietWave",
		version = "1.2.0",
		shortdesc = "SovietWawe Playlist",
        license = "GPL",
		description = "Loads a playlist from SovietWawe",
		author = "Viktor Honchar",
        capabilities = {"trigger"},
	}
end

  function createItem(info)
    local item={path="",name="",title="",artist="",genre="",copyright="",album="",tracknum="",description="",rating="",date="",setting="",
        url="",language="",nowplaying="",publisher="",encodedby="",arturl="",trackid="",options="",duration="",meta=""
    };
    for fld,val in pairs(info) do
        if fld == "arturl" then
            item[fld]=ImgBaseUrl..val
        else
            item[fld]=val
        end
        
    end
	return item
end

function createNode(newNodeInfo)
    local nodeObj={
        node = vlc.sd.add_node( newNodeInfo );
        addItem=function(item)
            nodeObj.node.add_subitem(nodeObj.node, item)
        end
    }
    return nodeObj;
end

function main()
    local nd, uri, subNode, img;
------------------------------------------------------------------------------------------------------------------------------------------
    nd = vlc.sd.add_node({
        title="Soviet Wave Radio", 
        description="Best of sovietwave, synthwave, chillwave and electronic music.",
        arturl="https://newsovietwave.com/assets/images/soviet-scifi-25601440-122x69.jpeg"
    })
    
    subNode = createItem({title="WebRadio",path="https://listen5.myradio24.com/sovietwave"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------

end
