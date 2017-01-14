# device: Plugin API Docs

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [Library](http://docs.coronalabs.com/api/type/Library.html)
| __Corona Store__     | [device](http://store.coronalabs.com/plugin/device)
| __Keywords__         | device, dpi, support
| __See also__         | [Sample code](sample.lua)

## Overview

The device plugin can be used in your [Corona](https://coronalabs.com/products/corona-sdk/) project. It enables you to easily get information about the device running the application in one place, including what events are supported.

With access to xdpi and ydpi information for the device it is also possible to create an application with fixed real size display objects (i.e. the same size on multiple device screens), or to run the application with a stretched display without stretching display objects (see [xdpi](xdpi.markdown)/[ydpi](ydpi.markdown) for more information).


## Syntax

	local device = require "plugin.device"

### Functions

##### [device.refreshDpi()](refreshDpi.markdown)


### Properties

##### [device.is_iPad](is_iPad.markdown)

##### [device.is_iPhone](is_iPhone.markdown)

##### [device.is_iPhone](is_iPhone.markdown)

##### [device.isAndroid](isAndroid.markdown)

##### [device.isApple](isApple.markdown)

##### [device.isGoogle](isGoogle.markdown)

##### [device.isKindleFire](isKindleFire.markdown)

##### [device.isNook](isNook.markdown)

##### [device.isSimulator](isSimulator.markdown)

##### [device.isTall](isTall.markdown)

##### [device.isWindows](isWindows.markdown)

##### [device.orientation](orientation.markdown)

##### [device.store](store.markdown)

##### [device.supportsAccelerometer](supportsAccelerometer.markdown)

##### [device.supportsGyroscope](supportsGyroscope.markdown)

##### [device.supportsHeading](supportsHeading.markdown)

##### [device.supportsInputDeviceState](supportsInputDeviceState.markdown)

##### [device.supportsKey](supportsKey.markdown)

##### [device.supportsLocation](supportsLocation.markdown)

##### [device.supportsMouse](supportsMouse.markdown)

##### [device.supportsMultitouch](supportsMultitouch.markdown)

##### [device.supportsOrientation](supportsOrientation.markdown)

##### [device.xdpi](xdpi.markdown)

##### [device.ydpi](ydpi.markdown)


## Project Configuration

### Corona Store Activation

In order to use this plugin, you must activate the plugin at the [Corona Store](http://store.coronalabs.com/plugin/device).


### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project. 

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["plugin.device"] =
		{
			-- required
			publisherId = "com.pelagic-games",
		},
	},		
}
``````

### Enterprise

If you have activated this plugin, you can download this plugin from the corresponding plugin page in the [Corona Store](http://store.coronalabs.com/plugin/device).


## Platform-specific Notes

Not supported with Corona Cards, as the device information will not be directly accessible to the library.

Some properties are only supported on Android and iOS, but may work on other platforms. In particular, [xdpi](xdpi.markdown) and [ydpi](ydpi.markdown) are only expected to work on Android and iOS.


## Resources

### Sample Code

You can access sample code [here](sample.lua).

### Support

More support is available from the Pelagic Games team:

* [E-mail](mailto://support@pelagic-games.com)
* [Plugin Publisher](http://www.pelagic-games.com)


## Compatibility

| Platform                     | Supported
| ---------------------------- | ---------------------------- 
| iOS                          | Yes
| Android                      | Yes
| Android (GameStick)          | Yes
| Android (Kindle)             | Yes
| Android (NOOK)               | Yes
| Android (Ouya)               | Yes
| Mac App                      | Partial
| Win32 App                    | Partial
| Windows Phone 8              | Partial
| Corona Simulator (Mac)       | Partial
| Corona Simulator (Win)       | Partial

