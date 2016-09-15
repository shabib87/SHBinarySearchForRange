![SHBinarySearchForRange](Images/codewithshabib.png)
# SHBinarySearchForRange

[![Version](https://img.shields.io/cocoapods/v/SHBinarySearchForRange.svg?style=flat)](http://cocoapods.org/pods/SHBinarySearchForRange)
[![License](https://img.shields.io/cocoapods/l/SHBinarySearchForRange.svg?style=flat)](http://cocoapods.org/pods/SHBinarySearchForRange)
[![Platform](https://img.shields.io/cocoapods/p/SHBinarySearchForRange.svg?style=flat)](http://cocoapods.org/pods/SHBinarySearchForRange)

## Overview

This cocoapod helps to find the nearest ceiling double/float value from a double/float array by performing a binary search operation. 

## Requirements

* ARC
* iOS8

## Installation

SHBinarySearchForRange is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SHBinarySearchForRange"
```

## Usage

```ObjC
#import "SHBinarySearchForRange.h"

NSArray *array = @[@0.12f, @0.23f, @0.3f, @0.345f, @0.967f, @1.0f];
SHBinarySearchForRange *binarySearch = [[SHBinarySearchForRange alloc] initWithValues:array];

NSInteger index = [binarySearch indexOfClosestCeilingForSearchItem:10.67575f];
NSNumber *valAtIndex = [array objectAtIndex:index];

NSLog(@"Value close to range: %f", valAtIndex.doubleValue);

```

## Author

**Created by** Ahmad Shabibul Hossain, [@shabib_hossain](https://twitter.com/shabib_hossain).

## Contact

Share feedbacks and ideas to improve this project, I would love to hear them out. You can also follow me on [@shabib_hossain](https://twitter.com/shabib_hossain).

## License

SHBinarySearchForRange is available under the MIT license. See the LICENSE file for more info.
