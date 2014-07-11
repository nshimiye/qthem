//
//  QTquotation.h
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/11/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class QTorigin;

@interface QTquotation : NSManagedObject

@property (nonatomic, retain) NSString * writer;
@property (nonatomic, retain) NSDate * lastView;
@property (nonatomic, retain) NSString * qoute;
@property (nonatomic, retain) NSString * source;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) QTorigin *comeFrom;


- (void) saveToparse:(QTorigin *)origin;

@end
