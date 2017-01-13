# device.ydpi

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Number](http://docs.coronalabs.com/api/type/Number.html)
| __Library__          | [device.*](Readme.markdown)
| __Keywords__         | ydpi, dpi
| __See also__         | [Sample code](sample.lua), [xdpi](xdpi.markdown), [refreshDpi](refreshDpi.markdown)


## Overview

This property is the dpi (dots per inch) resolution of the device running the application, along the y-axis.


## Example
 
``````lua
local device = require 'plugin.device'

print( device.ydpi )
``````
