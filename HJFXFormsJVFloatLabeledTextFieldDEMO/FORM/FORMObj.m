//
//  FORMObj.m
//  sdfs
//
//  Created by Helmut on 22.08.15.
//  Copyright (c) 2015 Helmut. All rights reserved.
//

#import "FORMObj.h"
#import "HJFXFormsJVFloatLabeledTextField.h"

@implementation FORMObj
//let's make the email field's title red, just because we can

- (NSDictionary *) passwordField {
    return @{FXFormFieldType: FXFormFieldTypePassword};
}
- (NSDictionary *)emailField
{
    return @{ @"textLabel.color": [UIColor redColor], FXFormFieldCell: [HJFXFormsJVFloatLabeledTextField class], @"textField.placeholder": @"aaa", FXFormFieldType: FXFormFieldTypeText};
}

//we're happy with the layout and properties of our login form, but we
//want to add an additional button field at the end, so
//we've used the extraFields method

- (NSArray *)extraFields
{
    return @[
             
             //this field doesn't correspond to any property of the form
             //it's just an action button. the action will be called on first
             //object in the responder chain that implements the submitForm
             //method, which in this case would be the AppDelegate
             
             @{ FXFormFieldHeader: @"asdasd", FXFormFieldAction: @"submitLoginForm"},
             
             
             
             ];
}
@end
