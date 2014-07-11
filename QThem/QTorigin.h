//
//  QTorigin.h
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/11/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class QTquotation;

@interface QTorigin : NSManagedObject

@property (nonatomic, retain) NSString * sourceType;
@property (nonatomic, retain) NSString * sourceURL;
@property (nonatomic, retain) NSString * sourceMaker;
@property (nonatomic, retain) NSString * sourceAuthor;
@property (nonatomic, retain) NSSet *composed;
@end

@interface QTorigin (CoreDataGeneratedAccessors)

- (void)addComposedObject:(QTquotation *)value;
- (void)removeComposedObject:(QTquotation *)value;
- (void)addComposed:(NSSet *)values;
- (void)removeComposed:(NSSet *)values;

@end
