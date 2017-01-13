# device.supportsInputDeviceState

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Boolean](http://docs.coronalabs.com/api/type/Boolean.html)
| __Library__          | [device.*](Readme.markdown)
| __Keywords__         | inputDeviceState, event
| __See also__         | [Sample code](sample.lua)


## Overview

This property indicates whether the device running the application supports inputDeviceState events.


## Example
 
``````lua
local device = require 'plugin.device'

print( device.supportsInputDeviceState )
``````
