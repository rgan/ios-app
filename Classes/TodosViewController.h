//
//  TodosViewController.h
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoService.h"

@interface TodosViewController : UITableViewController 
{
	NSArray *todos;
	TodoService * service;
}

@property (retain) NSArray *todos;
- (id)initWithService:(TodoService *)svc;
@end
