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
//i need to check the differencr between nsinteger and int
-(int) getDigit: (NSInteger )value thePosition:(int)position
{
    return 0;
}

-(int) countDigits: (int)value
{
    return 3;
}

-(int) getMax:(NSArray *)list
{
    return 100;
}

/****************** end ****************************************/


/**
 *
 * sort integers using a bucket based sorting algorithm
 * good for its running time O(kn) where k is the #of digits in the max value of the list
 * bad for space though, it has an overhead of O(n) because we have to allocate a space for the buckets(stacks/queues)
 */
-(void) radixSort:(NSMutableArray *)list
{
    
    NSMutableArray *bucket0 = nil, *bucket1 = nil, *bucket2 = nil, *bucket3 = nil, *bucket4 = nil, *bucket5 = nil;
    //all the way to 10
    NSArray *bucketHolder = [[
                              NSArray alloc]initWithObjects:
    bucket0, bucket1,bucket2,bucket3,bucket4,bucket5, nil];
    
    
    int maxDigits = [self countDigits:[self getMax:list]]; //compute k, the # of digits that the max value has
    
    for (int k=0; k<= maxDigits; k++) {
    
        for (int i=0; i<list.count; i++) {
            int pos = [self getDigit:((int)[list objectAtIndex:i]) thePosition:k];
        
            [[bucketHolder objectAtIndex:pos] addObject:[list objectAtIndex:i]];
        }
        
        //clean up the list and
        
        //recreate the list using values of the buckets
        int pos = 0;
        for (int i=0; i<bucketHolder.count; i++) {
        
            NSMutableArray *btmp = [bucketHolder objectAtIndex:i];
            
            for (int j = 0; j < btmp.count; j++) {
                list[pos] = [btmp objectAtIndex:j];
                pos++;
            }
            
        }
    
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
