//
//  TodosViewControllerTest.m
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TodosViewControllerTest.h"


@implementation TodosViewControllerTest

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void) testAppDelegate {
    
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
    
}

#else                          

- (void) testShouldInvokeServiceToGetTodos {
    //id serviceMock = [OCMockObject mockForClass:[TodoService class]];
    TodoService* serviceMock = [[MockService alloc] init];
	TodosViewController* controller = [[TodosViewController alloc] initWithService:serviceMock];
	Todo *todo = [[Todo alloc] initWithNotes:@"test"];
	NSArray * expectedTodos = [NSArray arrayWithObject:todo];								
	STAssertEqualObjects(expectedTodos, controller.todos, @"Should return single todo from service");							  
    
}


#endif


@end
