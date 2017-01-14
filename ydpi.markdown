# device.ydpi

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Number](http://docs.coronalabs.com/api/type/Number.html)
| __Library__          | [device.*](Readme.markdown)
| __Keywords__         | ydpi, dpi
| __See also__         | [Sample code](sample.lua), [xdpi](xdpi.markdown), [refreshDpi](refreshDpi.markdown)


## Overview

This property is the dpi (dots per inch) resolution of the device running the application, along the y-axis.

This property can be used with [xdpi](xdpi.markdown) to have display objects appear as the same size, regardless of device being used to run the application (e.g. to create a ruler app), and to avoid stretching display objects with a stretched application display (see examples below).


## Example
 
``````lua
local device = require 'plugin.device'

print( device.ydpi )
``````

To have display objects appear as the same size, regardless of device:
``````lua
local device = require 'plugin.device'

-- Create a rectangle 0.4 inches wide by 0.6 inches tall
local rect = display.newRect(0, 0, 0.4 * device.xdpi * (display.contentWidth / display.pixelWidth), 0.6 * device.ydpi * (display.contentHeight / display.pixelHeight))
``````

To avoid stretching display objects, when the application runs with a stretched display:
``````lua
local device = require 'plugin.device'

-- Create a rectangle with a width to height ratio of 2:3
local rectWidth = 200
local rectHeight = rectWidth * (3 / 2) * (device.ydpi / device.xdpi) * ((display.contentHeight / display.pixelHeight) / (display.contentWidth / display.pixelWidth))

local rect = display.newRect(0, 0, rectWidth, rectHeight)
``````
