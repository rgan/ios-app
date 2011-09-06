//
//  TodoTest.m
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TodoTest.h"


@implementation TodoTest

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void) testAppDelegate {
    
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
    
}

#else                           // all code under test must be linked into the Unit Test bundle

- (void) testShouldCreateTodo {
    
	Todo *todo = [[Todo alloc] init];
	STAssertNotNil(todo, nil);
    
}

- (void) testShouldCreateTodoWithNotes {
	Todo *todo = [[Todo alloc] initWithNotes:@"test"];
	STAssertEqualObjects(todo.notes, @"test", @"should be equal");
}


#endif


@end
