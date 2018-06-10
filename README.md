# AXAListView

[![Version](https://img.shields.io/cocoapods/v/AXAListView.svg?style=flat)](https://cocoapods.org/pods/AXAListView)
[![License](https://img.shields.io/cocoapods/l/AXAListView.svg?style=flat)](https://cocoapods.org/pods/AXAListView)
[![Platform](https://img.shields.io/cocoapods/p/AXAListView.svg?style=flat)](https://cocoapods.org/pods/AXAListView)
[![Twitter](https://img.shields.io/badge/Twitter-@Ramotion-blue.svg?style=flat)](https://twitter.com/HaraldBregu)
[![CocoaPods](https://img.shields.io/cocoapods/v/AXAListView.svg)](https://cocoapods.org/pods/AXAListView)
[![CocoaPods](https://img.shields.io/cocoapods/v/AXAListView.svg)](https://cocoapods.org/pods/AXAListView)
[![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.paypal.me/haraldbregu)


## About
This library is maintained by Harald Bregu.<br>
I'm specialized in the designing and coding of custom UI for iOS Apps.<br>

## Installation

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- iOS 9.0+
- Xcode 9

## Installation

AXAListView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AXAListView'
```
```swift
listView.reloadData(numberOfItems: { (listView) -> Int in
return 13
}) { (listView, index) -> UIView in
return (index % 2 == 0) ? AXAListViewItem.instatiateFromNib(nibName: "AXAListViewItemOne") : AXAListViewItem.instatiateFromNib(nibName: "AXAListViewItemTwo")
}
```

## Author

Harald Bregu, harald.bregu@gmail.com

## License

AXAListView is available under the MIT license. See the LICENSE file for more info.
