//
//  DetailViewController.h
//  Telephones
//
//  Created by Sam Meech-Ward on 2018-02-27.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Telephone.h"

@protocol DetailViewControllerDelegate;

@interface DetailViewController : UIViewController

@property (nonatomic, strong) Telephone *phone;
@property (nonatomic, weak) id<DetailViewControllerDelegate> delegate;

@end

@protocol DetailViewControllerDelegate <NSObject>

- (void)detailViewController:(DetailViewController *)viewController didDismissWithText:(NSString *)text;

@end
