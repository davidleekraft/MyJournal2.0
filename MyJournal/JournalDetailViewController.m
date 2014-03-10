//
//  JournalDetailViewController.m
//  MyJournal
//
//  Created by David Kraft on 3/5/14.
//  Copyright (c) 2014 David Kraft. All rights reserved.
//

#import "JournalDetailViewController.h"
#import "JournalEntry.h"

@interface JournalDetailViewController ()
- (void)configureView;
@end

@implementation JournalDetailViewController

@synthesize entry = _entry;

#pragma mark - Managing the detail item


-(void) setEntry:(JournalEntry *)newEntry
{
    if(_entry != newEntry)
    {
        _entry = newEntry;
    }
    
    [self configureView];
    
}


- (void)configureView
{
    [self.titleField setText:self.entry.title];
    [self.authorLabel setText:[NSString stringWithFormat:@"Author: %@", [self.entry authorToString]]];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [self.createdLabel setText:[NSString stringWithFormat:@"Created: %@",[dateFormatter stringFromDate:self.entry.creationTimeStamp]]];
    [self.lastModifiedLabel setText:[NSString stringWithFormat:@"Last modified: %@",[dateFormatter stringFromDate:self.entry.lastEditTimeStamp]]];
    [self.content setText:[self.entry contentToString]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    self.entry = nil;
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self.entry setTitle:self.titleField.text];
    [self.entry setContent:self.content.text];
    [self.entry setLastEditTimeStamp:[[NSDate alloc] init]];
}

@end












