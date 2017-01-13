# device.refreshDpi()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [device.*](Readme.markdown)
| __Return value__     | nil
| __Keywords__         | refresh, dpi, xdpi, ydpi, orientation
| __See also__         | [Sample code](sample.lua), [orientation](orientation.markdown), [xdpi](xdpi.markdown), [ydpi](ydpi.markdown)


## Overview

This function refreshes the xdpi and ydpi for the device, based on the orientation. Orientation changes may result in dpi changes if the display is stretched.


## Syntax

	device.refreshDpi()


## Examples

``````lua
local device = require 'plugin.device'

print(device.orientation, device.xdpi, device.ydpi)

local function onOrientationChanged(event)
	device.refreshDpi()
	print(device.orientation, device.xdpi, device.ydpi)
end

Runtime:addEventListener("orientation", onOrientationChanged)
``````
