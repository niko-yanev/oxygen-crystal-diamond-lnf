/*   Copyright (C) 2016 Nikola Yanev <gericom.hummer@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 3,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */


import QtQuick 2.2

 
Item {
    id: main

    width: screenSize.width
    height: screenSize.height
    // width: 300
    // height: 300

    /* property declarations --------------------------{{{ */
    property int stage
    property int iconSize: (screenSize.width <= 1024) ? 64 : 128
    /* }}} */

    /* signal declarations ----------------------------{{{ */

    /* }}} */

    /* JavaScript functions ---------------------------{{{ */
    
    onStageChanged: {
        if (stage == 1) {
            wallpaper.opacity = 1
            gear.opacity = 1
            steptwo.opacity = 0.5
            loadingText.opacity = 0.5
            s1.opacity = 1
	    pointin.opacity = 0
            pointout.opacity = 0
            test.x= width * 0
        }
        if (stage == 2) {
	    
	    
	    loadingText.opacity = 0.4
	    s1.opacity = 0
	    pointin.opacity = 0
            pointout.opacity = 0
            s2.opacity = 1
	    test.x= width * 0.2
	    
        }
        if (stage == 3) {
	    s2.opacity = 0
	    loadingText.opacity = 0.3
	    s3.opacity = 1
	    test.x= width * 0.4
        }
        if (stage == 4) {
	    s3.opacity = 0
	    loadingText.opacity = 0.2
	    s4.opacity = 1
	    test.x= width * 0.6
	    
        }
        if (stage == 5) {
	    s4.opacity = 0
            loadingText.opacity = 0.1
	    logo.opacity = 0.8
            test.x= width * 0.8
        }
        if (stage == 6) {
	    
	    loadingText.opacity = 0
	    logo.opacity = 1
	    stepthree.opacity = 1  
	    stepfour.opacity = 1
	    
	   
        }
        
    }
    /* }}} */

    /* object properties ------------------------------{{{ */

    /* }}} */

    /* child objects ----------------------------------{{{ */

    

    
    Image {
	id: wallpaper
   
	height: parent.height
	width: parent.width
   
	x: 0
	y: 0
   
	source: "images/background.png"
	opacity: 0
    }

     Text {
             id: pointin
             //anchors.centerIn: parent
             color: "white"
             text: "......."
             font.pixelSize: 27
             textFormat: Text.StyledText
             
	     x: (parent.width - width) / 2 
	     y: 300 + (parent.height - height) / 2
	     opacity: 0
             SequentialAnimation on font.letterSpacing {
                 loops: Animation.Infinite;
                 NumberAnimation { from: 0; to: 200; easing.type: Easing.InQuad; duration: 3000 }
                 ScriptAction {
                     script: {
                         container.y = (screen.height / 4) + (Math.random() * screen.height / 2)
                         container.x = (screen.width / 4) + (Math.random() * screen.width / 2)
                     }
                 }
             }

             SequentialAnimation on opacity {
                 loops: Animation.Infinite;
                 NumberAnimation { from: 1; to: 0; duration: 2600 }
                 PauseAnimation { duration: 400 }
             }
             
	     Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
	     
    }
    
    Text {
             id: pointout
             //anchors.centerIn: parent
             color: "white"
             text: "......."
             font.pixelSize: 27
             textFormat: Text.StyledText
	     x: (parent.width - width) / 2 
	     y: 300 + (parent.height - height) / 2
	     
             SequentialAnimation on font.letterSpacing {
                 loops: Animation.Infinite;
                 NumberAnimation { from: 300; to: 0; easing.type: Easing.OutQuad; duration: 3000 }
                 ScriptAction {
                     script: {
                         container.y = (screen.height / 4) + (Math.random() * screen.height / 2)
                         container.x = (screen.width / 4) + (Math.random() * screen.width / 2)
                     }
                 }
             }

             SequentialAnimation on opacity {
                 loops: Animation.Infinite;
                 NumberAnimation { from: 1; to: 0; duration: 2600 }
                 PauseAnimation { duration: 400 }
             }
             opacity: 0
	     Behavior on opacity { NumberAnimation { duration: 1000; easing { type: Easing.InOutQuad } } }
    }
     
    /* }}} */

    /* stages -----------------------------------------{{{ */

    /* }}} */

    /* transitions ------------------------------------{{{ */

    /* }}} */
}

