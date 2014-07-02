//
//  QTDetailViewController.h
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/2/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
