//
//  DomainListSelectionDelegate.h
//  popoverControllerSample
//
//  Created by Bala on 10/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#ifndef popoverControllerSample_DomainListSelectionDelegate_h
#define popoverControllerSample_DomainListSelectionDelegate_h
#import <Foundation/Foundation.h>

@class DomainList;

@protocol DomainListSelectionDelegate
- (void)DomainListSelected:(NSString *)curSelection;
@end


#endif
