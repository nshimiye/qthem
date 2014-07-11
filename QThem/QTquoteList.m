//
//  QTquoteList.m
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/11/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import "QTquoteList.h"


@implementation QTquoteList

/****************** helper methods for radix *******************/
//i need to check the diffezencr between nsinteger and int
//the first digit (i.e. digit at index 0) is the least significant digit
-(NSUInteger) getDigit: (NSUInteger )value atIndex:(NSInteger)index
{
 
    NSLog(@"%ld", value);

 
    
    NSString * dconvert = [NSString stringWithFormat:@"%ld",value];
    
    NSLog(@"%ld", dconvert.length);

    
    NSInteger realIndex = dconvert.length - index - 1;
    if (realIndex < 0) {
        return 0;
    }
    
//    NSRange range = NSMakeRange(realIndex, realIndex);
    
    NSUInteger digit = [dconvert characterAtIndex:realIndex];

    digit = digit - 48;
    
    NSLog(@"%ld", digit);

    
    return digit;
    
}

-(NSInteger) countDigits: (NSInteger)value
{
    
    NSInteger digitsCount = 0;
    
    NSString * dconvert = [NSString stringWithFormat:@"%ld",value];
    
    digitsCount = dconvert.length;
    
    return digitsCount;
}

-(NSUInteger) getMax:(NSArray *)list
{
    
    if (list.count <=0) {
        return 0;
    }
    
     NSNumber *number = [list objectAtIndex:0];
    
    NSUInteger max = [number integerValue];
    
    for (NSUInteger i=0; i<list.count; i++) {
        
        number = [list objectAtIndex:i];
        
        if (max < [number integerValue]) { //two ways of accessing element of array in OBJ C
            
            max = [number integerValue];

        }
        
    }
    
    
    return max;
}

/****************** end ****************************************/


/**
 *
 * sort integers using a bucket based sorting algorithm
 * good for its running time O(kn) where k is the #of digits in the max value of the list
 * bad for space though, it has an overhead of O(n) because we have to allocate a space for the buckets(stacks/queues)
 
 * supporting positive integers only though
 */
-(void) radixSort:(NSMutableArray *)list
{
    
    NSMutableArray *bucket0 = [[NSMutableArray alloc]init],
    *bucket1 = [[NSMutableArray alloc]init],
    *bucket2 = [[NSMutableArray alloc]init],
    *bucket3 = [[NSMutableArray alloc]init],
    *bucket4 = [[NSMutableArray alloc]init],
    *bucket5 = [[NSMutableArray alloc]init],
    *bucket6 = [[NSMutableArray alloc]init],
    *bucket7 = [[NSMutableArray alloc]init],
    *bucket8 = [[NSMutableArray alloc]init],
    *bucket9 = [[NSMutableArray alloc]init];
    //all the way to 10
    NSArray *bucketHolder = [[NSArray alloc]initWithObjects:
    bucket0, bucket1,bucket2,bucket3,bucket4,bucket5,
    bucket6, bucket7,bucket8,bucket9,
                             nil];
    
    
    NSInteger maxDigits = [self countDigits:[self getMax:list]]; //compute k, the # of digits that the max value has
    
    for (NSInteger k=0; k<= maxDigits; k++) {
    
        for (NSInteger i=0; i<list.count; i++) {
            
            NSNumber *number = [list objectAtIndex:i];

            
            NSInteger pos = [self getDigit:[number intValue] atIndex:k];
        
            [[bucketHolder objectAtIndex:pos] addObject:[list objectAtIndex:i]];
        }
        
        //clean up the list and
        
        //recreate the list using values of the buckets
        
        int pos = 0;
        for (int i=0; i<bucketHolder.count; i++) {
        
            NSMutableArray *btmp = [bucketHolder objectAtIndex:i];
            
            NSLog(@"%ld", btmp.count);
            
            for (int j = 0; j < btmp.count; j++) {
                list[pos] = [btmp objectAtIndex:j];
                pos++;
            }
            [btmp removeAllObjects];
            
        }
        
        //----
        
    
    }
    
}



/**
 *
 * sort a list of objects on one of its attributes(nsstring) using the given <keyword>
 * the order is given by the frequency at which <keyword> appears in each <attr>
 * 
 * a hashtable is used to keep object with same frequency together
 *
 */
-(void) sortObjectBy:(NSArray *)list usedKeyword:(NSString *)keyWord objectAttr:(NSString *)attr
{
    
}


@end
