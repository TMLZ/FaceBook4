//
//  PostViewController.m
//  FaceBook4
//
//  Created by Tyler Miller on 6/10/14.
//  Copyright (c) 2014 Tyler Miller. All rights reserved.
//

#import "PostViewController.h"

@interface PostViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *feedImage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingIndicator;

@end

@implementation PostViewController

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
    
    self.title = @"Newsfeed";
    
    [self.loadingIndicator startAnimating];
    [self.loadingIndicator setHidesWhenStopped:YES];
    [self.loadingIndicator setColor:[UIColor blackColor]];
    
    [self.imageScrollView setHidden:YES];
    [self.imageScrollView setScrollEnabled:YES];
    
    
    [self.imageScrollView setContentSize:CGSizeMake(320, 1456)];
    
    [self performSelector:@selector(showScrollView) withObject:nil afterDelay:2];
    
    
    UIButton* leftIconButton = (UIButton *) [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"profileIcon"]];
    UIBarButtonItem *leftIconButtonItem  = [[UIBarButtonItem alloc] initWithCustomView:leftIconButton];
    self.navigationItem.leftBarButtonItem = leftIconButtonItem;
    
    UIButton* rightIconButton = (UIButton *) [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchIcon"]];
    UIBarButtonItem *rightIconButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightIconButton];
    self.navigationItem.rightBarButtonItem = rightIconButtonItem;
    
}

- (void)showScrollView {
    [self.loadingIndicator stopAnimating];
    [self.imageScrollView setHidden:NO];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
