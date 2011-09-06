//
//  MockService.m
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MockService.h"


@implementation MockService

- (NSArray*) getTodos:(NSString*)forUser {
	Todo *todo = [[Todo alloc] initWithNotes:@"test"];
	return [NSArray arrayWithObject:todo];
}

@end
