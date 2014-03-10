//
//  JournalEntry.h
//  AnotherJournal
//
//  Created by David Kraft on 2/1/12.
//  Copyright (c) 2012 Intermation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JournalEntry : NSObject
{
    NSString *title;
    id author;
    NSDate *creationTimeStamp;
    NSDate *lastEditTimeStamp;
    id content;
}

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) id author;
@property (strong, nonatomic) NSDate *creationTimeStamp;
@property (strong, nonatomic) NSDate *lastEditTimeStamp;
@property (strong, nonatomic) id content;

-(id) init;
-(id) initWithTitle: (NSString *)requestedTitle;
-(NSString *)authorToString;
-(NSString *)contentToString;

@end
