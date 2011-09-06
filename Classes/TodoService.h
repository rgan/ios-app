//
//  TodoService.h
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Todo.h"

@interface TodoService : NSObject {

}
- (NSArray*) getTodos:(NSString*)forUser;
@end
