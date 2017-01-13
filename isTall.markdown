# device.isTall

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Boolean](https://docs.coronalabs.com/api/type/Boolean.html)
| __Library__          | [device.*](Readme.markdown)
| __Keywords__         | device, tall
| __See also__         | [Sample code](sample.lua)


## Overview

This property indicates whether the device running the application is a tall device. A tall device is one whose height in pixels is more than 1.5 times its width in pixels.


## Example
 
``````lua
local device = require 'plugin.device'

print( device.isTall )
``````
