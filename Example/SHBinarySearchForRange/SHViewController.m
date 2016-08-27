//
//  SHViewController.m
//  SHBinarySearchForRange
//
//  Created by shabib87 on 08/18/2016.
//  Copyright (c) 2016 shabib87. All rights reserved.
//

#import "SHViewController.h"
#import "SHBinarySearchForRange.h"

@interface SHViewController ()

@end

@implementation SHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self runBinarySearch];
}

- (void)runBinarySearch {
    NSArray *array = @[@0.12f, @0.23f, @0.3f, @0.345f, @0.45f, @0.6f, @0.6758f, @0.6760f, @0.7f, @0.88f, @0.8812f, @0.89f, @0.9345f, @0.967f, @1.0f];
    [self positiveBoundaryForArray:array];
    [self negetiveBoundaryForArray:array];
    [self lowerHalfForArray:array];
    [self upperHalfForArray:array];
    [self equalValueForArray:array];
}

- (void)positiveBoundaryForArray:(NSArray *)array {
    SHBinarySearchForRange *binarySearch = [[SHBinarySearchForRange alloc] initWithValues:array];
    NSInteger index = [binarySearch indexOfClosestCeilingForSearchItem:10.67575f];
    NSNumber *valAtIndex = [array objectAtIndex:index];
    NSLog(@"Value close to range: %f", valAtIndex.doubleValue);
    NSLog(@"Positive boundary tested");
}

- (void)negetiveBoundaryForArray:(NSArray *)array {
    SHBinarySearchForRange *binarySearch = [[SHBinarySearchForRange alloc] initWithValues:array];
    NSInteger index = [binarySearch indexOfClosestCeilingForSearchItem:-10.67575f];
    NSNumber *valAtIndex = [array objectAtIndex:index];
    NSLog(@"Value close to range: %f", valAtIndex.doubleValue);
    NSLog(@"Negetive boundary tested");
}

- (void)lowerHalfForArray:(NSArray *)array {
    SHBinarySearchForRange *binarySearch = [[SHBinarySearchForRange alloc] initWithValues:array];
    NSInteger index = [binarySearch indexOfClosestCeilingForSearchItem:0.43f];
    NSNumber *valAtIndex = [array objectAtIndex:index];
    NSLog(@"Value close to range: %f", valAtIndex.doubleValue);
    NSLog(@"Lower half tested");
}

- (void)upperHalfForArray:(NSArray *)array {
    SHBinarySearchForRange *binarySearch = [[SHBinarySearchForRange alloc] initWithValues:array];
    NSInteger index = [binarySearch indexOfClosestCeilingForSearchItem:0.87575f];
    NSNumber *valAtIndex = [array objectAtIndex:index];
    NSLog(@"Value close to range: %f", valAtIndex.doubleValue);
    NSLog(@"Upper half tested");
}

- (void)equalValueForArray:(NSArray *)array {
    SHBinarySearchForRange *binarySearch = [[SHBinarySearchForRange alloc] initWithValues:array];
    NSInteger index = [binarySearch indexOfClosestCeilingForSearchItem:0.89f];
    NSNumber *valAtIndex = [array objectAtIndex:index];
    NSLog(@"Value close to range: %f", valAtIndex.doubleValue);
    NSLog(@"Equal value tested");
}

@end
