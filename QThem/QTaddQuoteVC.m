//
//  QTaddQuoteVC.m
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/2/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import "QTaddQuoteVC.h"
#import <Parse/Parse.h>

@interface QTaddQuoteVC ()

@property (nonatomic, strong) IBOutlet UITextField *author;
@property (nonatomic, strong) IBOutlet UITextField *source;
@property (nonatomic, strong) IBOutlet UITextField *twitter;
@property (nonatomic, strong) IBOutlet UITextView *qname;

@end

@implementation QTaddQuoteVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)done :(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)save:(id)sender
{
    
    PFObject *quote = [PFObject objectWithClassName:@"Quote"];
    [quote setObject:[[self qname] text] forKey:@"qname"];
    [quote setObject:[[self author] text] forKey:@"author"];
    [quote setObject:[[self source] text] forKey:@"source"];
    [quote setObject:[[self twitter] text] forKey:@"twitter"];
    //more here
    
    [quote saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            [self done:self]; //call my done method
        }
    }];
    
}








@end
