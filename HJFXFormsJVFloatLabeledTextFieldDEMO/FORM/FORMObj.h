//
//  FORMObj.h
//  sdfs
//
//  Created by Helmut on 22.08.15.
//  Copyright (c) 2015 Helmut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FXForms.h"


@interface FORMObj : NSObject <FXForm>
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *test_str;
@property (nonatomic, copy) NSString *password;
@property (nonatomic, assign) BOOL rememberMe;
@end
