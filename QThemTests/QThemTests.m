//
//  QThemTests.m
//  QThemTests
//
//  Created by Marcellin Nshimiyimana on 7/2/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "QTquoteList.h"

@interface QThemTests : XCTestCase

@end

@implementation QThemTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//testing radixSort for now
-(void)testSearchEngine
{
    QTquoteList *sengine = [[QTquoteList alloc]init];
    
    NSMutableArray *list = [[NSMutableArray alloc] initWithObjects:[NSNumber numberWithInt: 321],
                            [NSNumber numberWithInt: 54],
                            [NSNumber numberWithInt: 3],
                            [NSNumber numberWithInt: 23],
                            [NSNumber numberWithInt: 74],
                            [NSNumber numberWithInt: 345],
                            [NSNumber numberWithInt: 213],
                            [NSNumber numberWithInt: 20], nil];
    
    NSLog(@"%@",list);
    
    [sengine radixSort:list];
    
     NSLog(@"%@",list);
    
}

@end
