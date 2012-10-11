//
//  AKPViewController.m
//  popoverControllerSample
//
//  Created by AKP on 10/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AKPViewController.h"
#import "AKPTableViewController.h"

@interface AKPViewController ()

@end

@implementation AKPViewController
@synthesize  listPopover;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(void)rowSelected:(NSString*)str
{
   // self.monster = curSelection;
    
    if (self.listPopover != nil) {
        [self.listPopover dismissPopoverAnimated:YES];
    }    
    
   // [self refresh];
}
- (IBAction)loginButtonClicked:(id)sender {
    NSArray * arr = [NSArray arrayWithObjects:@"KTI",@"GQ", nil];
    tbView = [[AKPTableViewController alloc]initWithStyle:UITableViewStyleGrouped:arr]; 
    tbView.delegate = self;
    self.listPopover = [[UIPopoverController alloc]initWithContentViewController:tbView];
    [self.listPopover presentPopoverFromRect:CGRectMake(0, 0, 300, 300) inView:loginButton permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
   // [self.listPopover presentPopoverFromBarButtonItem:tbView 
     //                               permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

- (void)DomainListSelected:(NSString *)curSelection
{
    NSLog(@"DomainListSelected = %@",curSelection);  
}
@end
