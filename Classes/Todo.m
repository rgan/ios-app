//
//  Todo.m
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Todo.h"


@implementation Todo

@synthesize notes;

- (id)initWithNotes:(NSString *)aNote
{
	self = [self init];
	notes = [aNote copy];
	return self;
}

- (BOOL) isEqual:(id)other {
	if (other == self)
        return YES;
    if (!other || ![other isKindOfClass:[self class]])
        return NO;
    return [self isEqualToTodo:other];
}

-(BOOL) isEqualToTodo:(Todo *) other {
	if ([notes isEqual:other.notes]) {
		return YES;
	}
    return NO;
}

- (void) dealloc {
	[notes release];
	[super dealloc];
}

@end
