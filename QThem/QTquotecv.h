//
//  QTquotecv.h
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/11/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface QTquotecv : PFTableViewCell

@property (nonatomic, weak) IBOutlet UILabel *theQuote;
@property (nonatomic, weak) IBOutlet UILabel *quoteAuthor;
@property (nonatomic, weak) IBOutlet UILabel *quoteSource;
@property (nonatomic, weak) IBOutlet UIImageView *customCheckMark;

@end
