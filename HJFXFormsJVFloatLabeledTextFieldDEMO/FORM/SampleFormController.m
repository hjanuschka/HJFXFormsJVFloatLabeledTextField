//
//  SampleFormController.m
//  sdfs
//
//  Created by Helmut on 22.08.15.
//  Copyright (c) 2015 Helmut. All rights reserved.
//

#import "SampleFormController.h"
#import "FORMObj.h"
#import "HJFXFormsJVFloatLabeledTextField.h"


@implementation SampleFormController

- (void) loadView {
    [self.formController registerCellClass:[HJFXFormsJVFloatLabeledTextField class] forFieldType:FXFormFieldTypeText];
    [self.formController registerCellClass:[HJFXFormsJVFloatLabeledTextField class] forFieldType:FXFormFieldTypePassword];
        [self.formController registerCellClass:[HJFXFormsJVFloatLabeledTextField class] forFieldType:FXFormFieldTypeEmail ];
     self.formController.form = [[FORMObj alloc] init];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
        //set up form
       
    }
    return self;
}
- (void)submitLoginForm
{
    //now we can display a form value in our alert
    [[[UIAlertView alloc] initWithTitle:@"Login Form Submitted" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] show];
    NSLog(@"SELF: %@", self.formController.form);
}
//these are action methods for our forms

@end
