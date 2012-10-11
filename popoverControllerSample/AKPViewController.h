//
//  AKPViewController.h
//  popoverControllerSample
//
//  Created by AKP on 10/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AKPTableViewController.h"
#import "DomainListSelectionDelegate.h"
@interface AKPViewController : UIViewController<DomainListSelectionDelegate>
{
    IBOutlet UIButton* loginButton;
    AKPTableViewController* tbView;
}
@property (nonatomic, retain) UIPopoverController *listPopover;
-(void)rowSelected:(NSString*)str;
- (IBAction)loginButtonClicked:(id)sender;

@end
