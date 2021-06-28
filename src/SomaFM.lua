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
		title = "SomaFM",
		version = "1.2.0",
		shortdesc = "SomaFM Playlist",
        license = "GPL",
		description = "Loads a playlist from SomaFM.",
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
    uri = "groovesalad"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
        title="Groove Salad", 
        description="A nicely chilled plate of ambient/downtempo beats and grooves.",
        arturl=img
    })
    
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    --nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "secretagent"
    img=baseUrl.."img/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
        title="Secret Agent", 
        description="The soundtrack for your stylish, mysterious, dangerous life. For Spies and PIs too!",
        arturl=img
    })
    
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    --nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    --nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    nd = vlc.sd.add_node({
        title="Drone Zone", 
        description="Served best chilled, safe with most medications. Atmospheric textures with minimal beats.",
        arturl=baseUrl.."img/dronezone120.jpg"
    })
    uri = "dronezone"
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    -- subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    -- nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    nd = vlc.sd.add_node({
        title="Lush", 
        description="Sensuous and mellow vocals, mostly female, with an electronic influence.",
        arturl=baseUrl.."img/lush-x120.jpg"
    })
    uri = "lush"
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    -- subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    -- nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    nd = vlc.sd.add_node({
    title="Underground 80s", 
    description="Early 80s UK Synthpop and a bit of New Wave.",
    arturl=baseUrl.."img/u80s-120.png"
    })
    uri = "u80s"
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    nd = vlc.sd.add_node({
    title="Indie Pop Rocks!", 
    description="New and classic favorite indie pop tracks.",
    arturl=baseUrl.."img/indychick.jpg"
    })
    uri = "indiepop"
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    --nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "seventies"
    nd = vlc.sd.add_node({
    title="Left Coast 70s", 
    description="Mellow album rock from the Seventies. Yacht not required.",
    arturl=baseUrl.."img/seventies120.jpg"
    })
    
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    img=baseUrl.."img/deepspaceone120.gif"
    uri = "deepspaceone"
    nd = vlc.sd.add_node({
    title="Deep Space One", 
    description="Deep ambient electronic, experimental and space music. For inner and outer space exploration.",
    arturl=img
    })
    
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    --nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    --nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    img=baseUrl.."img/folkfwd120.jpg"
    uri = "folkfwd"
    nd = vlc.sd.add_node({
    title="Folk Forward", 
    description="Indie Folk, Alt-folk and the occasional folk classics.",
    arturl=img
    })
    
    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    --subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    --nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    img=baseUrl.."img/bagel120.png"
    uri = "bagel"
    nd = vlc.sd.add_node({
    title="BAGeL Radio", 
    description="What alternative rock radio should sound like. [explicit]",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    -- subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    -- nd.add_subitem(nd, subNode)
    -- subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    -- nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    img=baseUrl.."img/defcon120.png"
    uri = "defcon"
    nd = vlc.sd.add_node({
    title="DEF CON Radio", 
    description="Live from DEF CON 26 Aug 10-12. Music for Hacking.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    img=baseUrl.."img/blender120.png"
    uri = "beatblender"
    nd = vlc.sd.add_node({
    title="Beat Blender", 
    description="A late night blend of deep-house and downtempo chill.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "bootliquor"
    img=baseUrl.."img/"..uri..".gif"
    nd = vlc.sd.add_node({
    title="Boot Liquor", 
    description="Americana Roots music for Cowhands, Cowpokes and Cowtippers",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "thistle"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
    title="Thistle Radio", 
    description="Exploring music from Celtic roots and branches",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "sonicuniverse"
    img=baseUrl.."img/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="Sonic Universe", 
    description="Transcending the world of jazz with eclectic, avant-garde takes on tradition.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "suburbsofgoa"
    img=baseUrl.."img/sog120.jpg"
    nd = vlc.sd.add_node({
    title="Suburbs of Goa", 
    description="Desi-influenced Asian world beats and beyond.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "illstreet"
    img=baseUrl.."img/"..uri..".jpg"
    nd = vlc.sd.add_node({
    title="Illinois Street Lounge", 
    description="Classic bachelor pad, playful exotica and vintage music of tomorrow.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "poptron"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
    title="PopTron", 
    description="Electropop and indie dance rock with sparkle and pop.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "thetrip"
    img=baseUrl.."img/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="The Trip", 
    description="Progressive house / trance. Tip top tunes.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "cliqhop"
    img=baseUrl.."img/"..uri..".gif"
    nd = vlc.sd.add_node({
    title="Cliqhop idm", 
    description="Blips'n'beeps backed mostly w/beats. Intelligent Dance Music.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "fluid"
    img=baseUrl.."img/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="Fluid", 
    description="Drown in the electronic sound of instrumental hiphop, future soul and liquid trap.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "7soul"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
    title="Seven Inch Soul", 
    description="Vintage soul tracks from the original 45 RPM vinyl.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "digitalis"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
    title="Digitalis", 
    description="Digitally affected analog rock to calm the agitated heart.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "missioncontrol"
    img=baseUrl.."img/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="Mission Control", 
    description="Celebrating NASA and Space Explorers everywhere.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "gsclassic"
    img=baseUrl.."img3/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="Groove Salad Classic", 
    description="The classic (early 2000s) version of a nicely chilled plate of ambient/downtempo beats and grooves.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "brfm"
    img=baseUrl.."img/1023brc.jpg"
    nd = vlc.sd.add_node({
    title="Black Rock FM", 
    description="From the Playa to the world, for the annual Burning Man festival.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "dubstep"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
    title="Dub Step Beyond", 
    description="Dubstep, Dub and Deep Bass. May damage speakers at high volume.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "metal"
    img=baseUrl.."img3/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="Metal Detector", 
    description="From black to doom, prog to sludge, thrash to post, stoner to crossover, punk to industrial.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "covers"
    img=baseUrl.."img/"..uri.."120.jpg"
    nd = vlc.sd.add_node({
    title="Covers", 
    description="Just covers. Songs you know by artists you don't. We've got you covered.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "sf1033"
    img=baseUrl.."img/"..uri.."120.png"
    nd = vlc.sd.add_node({
    title="SF 10-33", 
    description="Ambient music mixed with the sounds of San Francisco public safety radio traffic.",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------
    uri = "live"
    img=baseUrl.."img/SomaFMDJSquare120.jpg"
    nd = vlc.sd.add_node({
    title="SomaFM Live", 
    description="Special Live Events and rebroadcasts of past live events",
    arturl=img
    })

    subNode = createItem({title="AAC 128kbps",path=baseUrl..uri.."130.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 64kbps",path=baseUrl..uri.."64.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="AAC 32kbps",path=baseUrl..uri.."32.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 320kbps",path=baseUrl..uri.."320.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 256kbps",path=baseUrl..uri.."256.pls"})
    nd.add_subitem(nd, subNode)
    subNode = createItem({title="MP3 128kbps",path=baseUrl..uri..".pls"})
    nd.add_subitem(nd, subNode)
------------------------------------------------------------------------------------------------------------------------------------------

end
