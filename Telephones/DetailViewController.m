//
//  DetailViewController.m
//  Telephones
//
//  Created by Sam Meech-Ward on 2018-02-27.
//  Copyright © 2018 meech-ward. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) NSString *text;

@end

@implementation DetailViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.titleLabel.text = self.phone.name;
  self.imageView.image = self.phone.image;
  
  self.text = @"Ringy Dingy";
}

- (IBAction)dismiss:(id)sender {
  // Navigation is pop, this is modal.
  [self dismissViewControllerAnimated:YES completion:nil];
  
  [self.delegate detailViewController:self didDismissWithText:self.text];
}


@end
