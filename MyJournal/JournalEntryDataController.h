//
//  JournalEntryDataController.h
//  MyJournal
//
//  Created by David Kraft on 3/5/14.
//  Copyright (c) 2014 David Kraft. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JournalEntry;

@interface JournalEntryDataController : NSObject

@property (nonatomic, copy) NSMutableArray *collectionOfJournalEntries;

-(NSInteger)numberOfEntries;
-(JournalEntry *)objectInListAtIndex:(NSInteger)index;
-(void)addJournalEntryNamed:(NSString *)name;

@end
