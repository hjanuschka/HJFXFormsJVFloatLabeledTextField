//
//  FloatingFX.m
//  sdfs
//
//  Created by Helmut on 22.08.15.
//  Copyright (c) 2015 Helmut. All rights reserved.
//

#import "HJFXFormsJVFloatLabeledTextField.h"

@implementation HJFXFormsJVFloatLabeledTextField

@synthesize textField = _textField;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/
- (void) layoutSubviews {
    NSLog(@"SELF   FRAME: %@", NSStringFromCGRect(self.frame));
    [super layoutSubviews];

    
}
+ (CGFloat)heightForField:(FXFormField *)field width:(CGFloat)width
{
    return 60;
}

- (void) setUp {

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.textLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    
    
    self.textField = (UITextField *)[[JVFloatLabeledTextField alloc] initWithFrame:CGRectMake(0, 0, 200, 21)];
    self.textField.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.textField.font = [UIFont systemFontOfSize:self.textLabel.font.pointSize];
    self.textField.textColor = [UIColor colorWithRed:0.275f green:0.376f blue:0.522f alpha:1.000f];
    self.autoresizesSubviews=YES;
    [self.contentView addSubview:self.textField];

  

    
    self.detailTextLabel.textAlignment = NSTextAlignmentLeft;
    
    self.detailTextLabel.numberOfLines = 0;
   
    self.textField.placeholder=@"bbb";
    self.textLabel.hidden=YES;
    NSLog(@"SSS: %@", self.field);
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextFieldTextDidChangeNotification object:self.textField];
    
    NSLog(@"SETUP");
}
- (void) update {
    [super update];
    self.textLabel.text = @"";

    self.textField.placeholder = [self.field.placeholder fieldDescription];
    self.textField.text = [self.field fieldDescription];
    self.textField.returnKeyType = UIReturnKeyDone;
    self.textField.textAlignment = NSTextAlignmentLeft;
 
    
    NSLog(@"UPDATE CALLED");
    self.textField.placeholder=self.field.title;
}
- (void)updateFieldValue
{
    self.field.value = self.textField.text;
}
- (void)textDidChange
{
    [self updateFieldValue];
}


@end
