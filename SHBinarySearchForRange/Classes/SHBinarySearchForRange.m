//
//  SHBinarySearchForRange.m
//  Pods
//
//  Created by shabib hossain on 8/18/16.
//
//

#import "SHBinarySearchForRange.h"

@interface SHBinarySearchForRange ()

@property (nonatomic, strong) NSArray *allValues;

@end

@implementation SHBinarySearchForRange

- (id)initWithValues:(NSArray *)values {
    
    if (self = [super init]) {
        
        _allValues = [NSArray arrayWithArray:values];
    }
    
    return self;
}

- (NSInteger)indexOfClosestCeilingForSearchItem:(double)_searchItem {
    
    NSNumber *searchItem = [NSNumber numberWithDouble:_searchItem];
    
    return [self indexOfBinarySearch:searchItem minIndex:0 maxIndex:(_allValues.count - 1)];
}

- (NSInteger)indexOfBinarySearch:(NSNumber *)searchItem minIndex:(NSInteger)minIndex maxIndex:(NSInteger)maxIndex {
    
    // If the subarray is empty, return not found
    if (maxIndex < minIndex) return NSNotFound;
    
    NSInteger midIndex = ceil((double) (minIndex + maxIndex) / 2);
    NSNumber *valAtMidIndex = [_allValues objectAtIndex:midIndex];
    
    NSComparisonResult comparison = [searchItem compare:valAtMidIndex];
    if (comparison == NSOrderedSame) {
        
        return midIndex;
        
    } else if (comparison == NSOrderedAscending) {
        
        // value is less than mid, search the left half
        // if it's the first item
        if (midIndex <= 0) {
            
            return midIndex;
            
        } else {
            
            NSNumber *valBeforeMidIndex = [_allValues objectAtIndex:midIndex - 1];
            NSComparisonResult comparison = [searchItem compare:valBeforeMidIndex];
            
            // if the search item is between midIndex and mindIdex - 1
            if (comparison == NSOrderedDescending) {
                
                return midIndex;
                
            } else {
                
                // the searchItem is lesser, iterate again
                return [self indexOfBinarySearch:searchItem minIndex:minIndex maxIndex:midIndex - 1];
            }
        }
        
    } else {
        
        // value is greater than mid, search the right half
        // if it's the last item
        if (midIndex >= _allValues.count - 1) {
            
            return midIndex;
            
        } else {
            
            NSNumber *valAfterMidIndex = [_allValues objectAtIndex:midIndex + 1];
            NSComparisonResult comparison = [searchItem compare:valAfterMidIndex];
            
            // if the search item is between midIndex and mindIdex + 1
            if (comparison == NSOrderedAscending) {
                
                if (midIndex == _allValues.count - 1) return midIndex;
                return midIndex + 1;
                
            } else {
                
                // the searchItem is greater, iterate again
                return [self indexOfBinarySearch:searchItem minIndex:midIndex + 1 maxIndex:maxIndex];
            }
        }
    }
}

@end
