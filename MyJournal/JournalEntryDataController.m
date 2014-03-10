//
//  JournalEntryDataController.m
//  MyJournal
//
//  Created by David Kraft on 3/5/14.
//  Copyright (c) 2014 David Kraft. All rights reserved.
//

#import "JournalEntryDataController.h"
#import "JournalEntry.h"


@implementation JournalEntryDataController

@synthesize collectionOfJournalEntries = _collectionOfJournalEntries;

-(id)init
{
    if(self = [super init])
        self.collectionOfJournalEntries = [[NSMutableArray alloc] init];
    
    return self;
}


-(void)setCollectionOfJournalEntries:(NSMutableArray *)newList
{
    if(_collectionOfJournalEntries != newList)
        _collectionOfJournalEntries = [newList mutableCopy];
}


-(NSInteger)numberOfEntries
{
    return [self.collectionOfJournalEntries count];
}



- (JournalEntry *)objectInListAtIndex:(NSInteger)index
{
    if((index >= 0) && (index < [self numberOfEntries]))
    {
        return [self.collectionOfJournalEntries objectAtIndex:index];
    }
    return nil;
}



-(void)addJournalEntryNamed:(NSString *)name
{
    JournalEntry *newEntry = [[JournalEntry alloc] initWithTitle:name];
    [self.collectionOfJournalEntries addObject:newEntry];
}


@end



















