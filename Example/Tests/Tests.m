//
//  SHBinarySearchForRangeTests.m
//  SHBinarySearchForRangeTests
//
//  Created by shabib87 on 08/18/2016.
//  Copyright (c) 2016 shabib87. All rights reserved.
//

@import XCTest;
#import "SHBinarySearchForRange.h"

@interface Tests : XCTestCase

@property (nonatomic, strong) SHBinarySearchForRange *binarySearch;
@property (nonatomic, strong) NSArray *array;

@end

@implementation Tests

- (void)setUp {
    
    [super setUp];
    
    _array = @[@0.12f, @0.23f, @0.3f, @0.345f, @0.45f, @0.6f, @0.6758f, @0.6760f, @0.7f, @0.88f, @0.8812f, @0.89f, @0.9345f, @0.967f, @1.0f];
    _binarySearch = [[SHBinarySearchForRange alloc] initWithValues:_array];
}

- (void)tearDown {
    
    _binarySearch = nil;
    [super tearDown];
}

- (void)testPositiveBoundaryCase {
    NSInteger index = [_binarySearch indexOfClosestCeilingForSearchItem:10.67575f];
    NSNumber *valAtIndex = [_array objectAtIndex:index];
    
    NSNumber * max = [_array valueForKeyPath:@"@max.doubleValue"];
    
    int val1 = (int) ceil(valAtIndex.doubleValue);
    int val2 = (int) ceil(max.doubleValue);
    
    XCTAssertEqual(val1, val2, "Input was bigger than the max value available in the array. Search should return the max value.");
}

- (void)testNegetiveBoundary {
    NSInteger index = [_binarySearch indexOfClosestCeilingForSearchItem:-10.67575f];
    NSNumber *valAtIndex = [_array objectAtIndex:index];
    
    NSNumber * min = [_array valueForKeyPath:@"@min.doubleValue"];
    
    int val1 = (int) ceil(valAtIndex.doubleValue);
    int val2 = (int) ceil(min.doubleValue);
    
    XCTAssertEqual(val1, val2, "Input was smaller than the min value available in the array. Search should return the min value.");
}

- (void)testLowerHalf {
    NSNumber *searchItem = @0.43f;
    NSInteger index = [_binarySearch indexOfClosestCeilingForSearchItem:searchItem.doubleValue];
    NSNumber *valAtIndex = [_array objectAtIndex:index];
    
    double val1 = ceil(searchItem.doubleValue);
    double val2 = ceil(valAtIndex.doubleValue);
    
    XCTAssertEqual(val1, val2, "Input was close to 0.45. Search should return 0.45.");
}

- (void)testUpperHalf {
    NSNumber *searchItem = @0.87575f;
    NSInteger index = [_binarySearch indexOfClosestCeilingForSearchItem:searchItem.doubleValue];
    NSNumber *valAtIndex = [_array objectAtIndex:index];
    
    double val1 = ceil(searchItem.doubleValue);
    double val2 = ceil(valAtIndex.doubleValue);
    
    XCTAssertEqual(val1, val2, "Input was close to 0.88. Search should return 0.88.");
}

- (void)testEqualValue {
    NSNumber *searchItem = @0.89f;
    NSInteger index = [_binarySearch indexOfClosestCeilingForSearchItem:searchItem.doubleValue];
    NSNumber *valAtIndex = [_array objectAtIndex:index];
    
    double val1 = ceil(searchItem.doubleValue);
    double val2 = ceil(valAtIndex.doubleValue);
    
    XCTAssertEqual(val1, val2, "Input was same as 0.89. Search should return 0.89.");
}

@end

