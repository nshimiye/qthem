//
//  QTMasterViewController.h
//  QThem
//
//  Created by Marcellin Nshimiyimana on 7/2/14.
//  Copyright (c) 2014 nextic.me. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface QTMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end