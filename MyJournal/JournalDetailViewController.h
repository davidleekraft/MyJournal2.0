//
//  JournalDetailViewController.h
//  MyJournal
//
//  Created by David Kraft on 3/5/14.
//  Copyright (c) 2014 David Kraft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JournalEntry;


@interface JournalDetailViewController : UIViewController

@property (strong, nonatomic) JournalEntry *entry;

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *createdLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastModifiedLabel;
@property (weak, nonatomic) IBOutlet UITextView *content;


@end
