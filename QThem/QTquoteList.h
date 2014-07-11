//
//  QTquoteList.h
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/11/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QTquotation.h"

@interface QTquoteList : NSObject

@property (nonatomic, strong) NSMutableArray *quoteList;

-(void) radixSort:(NSMutableArray *)list;

-(void) sortObjectBy:(NSArray *)list usedKeyword:(NSString *)keyWord objectAttr:(NSString *)attr;


@end
