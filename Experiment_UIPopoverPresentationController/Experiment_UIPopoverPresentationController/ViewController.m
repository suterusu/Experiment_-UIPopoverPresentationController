//
//  ViewController.m
//  Experiment_UIPopoverPresentationController
//
//  Created by Inba on 2017/12/20.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import "ViewController.h"
#import "NaviViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIStoryboard *s = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *a = [s instantiateViewControllerWithIdentifier:@"NaviViewController"];
    a.modalPresentationStyle = UIModalPresentationPopover;
    a.view;
    UIPresentationController *aa = a.popoverPresentationController;
    a.popoverPresentationController.sourceView = self.button;
    a.popoverPresentationController.sourceRect = self.button.bounds;
    a.preferredContentSize = CGSizeMake(300, 200);
    
    [self presentViewController: a animated:YES completion:nil];
    
}

@end
