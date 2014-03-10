//
//  JournalEntry.m
//  AnotherJournal
//
//  Created by David Kraft on 2/1/12.
//  Copyright (c) 2012 Intermation. All rights reserved.
//

#import "JournalEntry.h"

@implementation JournalEntry

@synthesize title = _title;
@synthesize author = _author;
@synthesize creationTimeStamp = _creationTimeStamp;
@synthesize lastEditTimeStamp = _lastEditTimeStamp;
@synthesize content = _content;

-(id) init
{
    if(self = [super init])
    {
        self.creationTimeStamp = [[NSDate alloc] init];
        self.author = [[UIDevice currentDevice] name];
        self.content = [NSString stringWithFormat:@""];
    }
    return self;
}

-(id) initWithTitle: (NSString *)requestedTitle
{
    self = [self init];
    self.title = [requestedTitle copy];
    return self;
}

-(NSString *)authorToString
{
    return [NSString stringWithFormat:@"%@", self.author];
}

-(NSString *)contentToString
{
    if([self.content isKindOfClass:[NSString class]])
        return self.content;
    else
        return @"Content not displayable as text.";
}


@end
