//
//  ViewController.m
//  Telephones
//
//  Created by Sam Meech-Ward on 2018-02-27.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "ViewController.h"
#import "Telephone.h"
#import "DetailViewController.h"

@interface ViewController () <DetailViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *phoneButton;

@property (strong, nonatomic) Telephone *phone;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  self.phone = [[Telephone alloc] init];
  self.phone.name = @"Chorded Telephone ☎️";
  self.phone.image = [UIImage imageNamed:@"phone-1"];
  self.phone.twistedPairs = 3000;
  
  [self.phoneButton setTitle:self.phone.name forState:UIControlStateNormal];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  [super prepareForSegue:segue sender:sender];
  NSLog(@"segue about to happen");
  
  if ([segue.identifier isEqualToString:@"detail-segue"]) {
     DetailViewController *detailVC = segue.destinationViewController;
    detailVC.phone = self.phone;
    detailVC.delegate = self;
  }
}

- (void)detailViewController:(DetailViewController *)viewController didDismissWithText:(NSString *)text {
  NSLog(@"I'm in the OGVC but I'm listening to detail vc for %@", text);
}

@end
