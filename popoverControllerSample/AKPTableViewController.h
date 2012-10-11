//
//  AKPTableViewController.h
//  popoverControllerSample
//
//  Created by AKP on 10/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DomainListSelectionDelegate.h"

@interface AKPTableViewController : UITableViewController
{
    int numberOfSec;
}
- (id)initWithStyle:(UITableViewStyle)style:(NSArray*)arrData;
@property(nonatomic,retain) NSArray* arrList;
@property(nonatomic,retain) id<DomainListSelectionDelegate> delegate;
@end
