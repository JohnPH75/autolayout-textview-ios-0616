//
//  ViewController.m
//  FISAutoLayout
//
//  Created by John Hussain on 6/27/16.
//  Copyright © 2016 John Hussain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.leftButton removeConstraints:self.leftButton.constraints];
    
    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.rightButton removeConstraints:self.rightButton.constraints];
    
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textView removeConstraints:self.textView.constraints];
    
    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active = YES;
    
    //self.textView.backgroundColor = [UIColor redColor];
    
    [self.textView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-20].active = YES;
    [self.textView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;
    [self.textView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    [self.textView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active = YES;
    [self.textView.bottomAnchor constraintEqualToAnchor:self.leftButton.topAnchor constant:-20].active = YES;
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
