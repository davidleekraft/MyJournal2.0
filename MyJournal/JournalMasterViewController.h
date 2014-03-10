//
//  JournalMasterViewController.h
//  MyJournal
//
//  Created by David Kraft on 3/5/14.
//  Copyright (c) 2014 David Kraft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JournalEntryDataController;

@interface JournalMasterViewController : UITableViewController

@property (strong, nonatomic) JournalEntryDataController *dataController;

@end
