//
//  SHBinarySearchForRange.h
//  Pods
//
//  Created by shabib hossain on 8/18/16.
//
//

#import <Foundation/Foundation.h>

@interface SHBinarySearchForRange : NSObject

/**
 *  Contructor method
 *
 *  @param values NSArray of the float/double values that is to be searched.
 *
 *  @return SHBinarySearchForRange object.
 */
- (id)initWithValues:(NSArray *)values;

/**
 *  Method to get the closest ceiling value of a search item from the array.
 *
 *  @param searchItem double/float that is the desired value
 *
 *  @return an index of the closest ceiling value of the search item.
 */
- (NSInteger)indexOfClosestCeilingForSearchItem:(double)searchItem;

@end
