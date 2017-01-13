-- 
-- Abstract: device Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------

-- Load plugin library
local device = require "plugin.device"

-------------------------------------------------------------------------------
-- BEGIN (Insert your sample test starting here)
-------------------------------------------------------------------------------

-- Create a label for each property in the device plugin
local isAndroidLabel = display.newText("Android: " .. tostring(device.isAndroid), 150, 25, 200, 50, native.systemFont, 12)
local isAppleLabel = display.newText("Apple: " .. tostring(device.isApple), 150, 50, 200, 50, native.systemFont, 12)
local isGoogleLabel = display.newText("Google: " .. tostring(device.isGoogle), 150, 75, 200, 50, native.systemFont, 12)
local is_iPadLabel = display.newText("iPad: " .. tostring(device.is_iPad), 150, 100, 200, 50, native.systemFont, 12)
local is_iPhoneLabel = display.newText("iPhone: " .. tostring(device.is_iPhone), 150, 125, 200, 50, native.systemFont, 12)
local is_iPodLabel = display.newText("iPod: " .. tostring(device.is_iPod), 150, 150, 200, 50, native.systemFont, 12)
local isKindleLabel = display.newText("Kindle: " .. tostring(device.isKindleFire), 150,175, 200, 50, native.systemFont, 12)
local isNookLabel = display.newText("Nook: " .. tostring(device.isNook), 150, 200, 200, 50, native.systemFont, 12)
local isSimulatorLabel = display.newText("Simulator: " .. tostring(device.isSimulator), 150, 225, 200, 50, native.systemFont, 12)
local isTallLabel = display.newText("Tall: " .. tostring(device.isTall), 150, 250, 200, 50, native.systemFont, 12)
local isWindowsLabel = display.newText("Windows: " .. tostring(device.isWindows), 150, 275, 200, 50, native.systemFont, 12)

-- Display properties
local xdpiLabel = display.newText("xdpi: " .. device.xdpi, 150, 300, 200, 50, native.systemFont, 12)
local ydpiLabel = display.newText("ydpi: " .. device.ydpi, 150, 325, 200, 50, native.systemFont, 12)
local orientationLabel = display.newText("Orientation: " .. device.orientation, 150,350, 200, 50, native.systemFont, 12)

-- Check device support for event listeners
local supportsAccelerometerLabel = display.newText("accelerometer: " .. tostring(device.supportsAccelerometer), 150, 375, 200, 50, native.systemFont, 12)
local supportsGyroscopeLabel = display.newText("gyroscope: " .. tostring(device.supportsGyroscope), 150, 400, 200, 50, native.systemFont, 12)
local supportsHeadingLabel = display.newText("heading: " .. tostring(device.supportsHeading), 150, 425, 200, 50, native.systemFont, 12)
local supportsInputDeviceStateLabel = display.newText("inputDeviceState: " .. tostring(device.supportsInputDeviceState), 150, 450, 200, 50, native.systemFont, 12)
local supportsKeyLabel = display.newText("key: " .. tostring(device.supportsKey), 150, 475, 200, 50, native.systemFont, 12)
local supportsLocationLabel = display.newText("location: " .. tostring(device.supportsLocation), 150, 500, 200, 50, native.systemFont, 12)
local supportsMouseLabel = display.newText("mouse: " .. tostring(device.supportsMouse), 300, 25, 200, 50, native.systemFont, 12)
local supportsMultitouchLabel = display.newText("multitouch: " .. tostring(device.supportsMultitouch), 300, 50, 200, 50, native.systemFont, 12)
local supportsOrientationLabel = display.newText("orientation: " .. tostring(device.supportsOrientation), 300, 75, 200, 50, native.systemFont, 12)

-- App store
local storeLabel = display.newText("Store: " .. device.store, 300, 100, 200, 50, native.systemFont, 12)

-- Refresh the DPI when there is an orientation event
function onOrientationChange(event)
	device.refreshDpi()
	xdpiLabel.text = "xdpi: " .. device.xdpi
	ydpiLabel.text = "ydpi: " .. device.ydpi
	orientationLabel.text = "Orientation: " .. device.orientation
end

Runtime:addEventListener("orientation", onOrientationChange)

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------
