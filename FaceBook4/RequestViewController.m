//
//  RequestViewController.m
//  FaceBook4
//
//  Created by Tyler Miller on 6/10/14.
//  Copyright (c) 2014 Tyler Miller. All rights reserved.
//

#import "RequestViewController.h"

@interface RequestViewController ()

@end

@implementation RequestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Set Status Bar Tint Color
    [self setNeedsStatusBarAppearanceUpdate];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
