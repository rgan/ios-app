//
//  Todo.h
//  todos
//
//  Created by rganesha on 9/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Todo : NSObject {
@private NSString * notes;
}

@property (readonly) NSString * notes;
- (id)initWithNotes:(NSString *)aNote;
@end
