//
//  NaviViewController.m
//  Experiment_UIPopoverPresentationController
//
//  Created by Inba on 2017/12/20.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import "NaviViewController.h"

#import "ViewController2.h"

@interface NaviViewController ()<UIAdaptivePresentationControllerDelegate>

@end

@implementation NaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modalPresentationStyle = UIModalPresentationPopover;
    self.popoverPresentationController.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller{
    return UIModalPresentationNone;
}


- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller traitCollection:(UITraitCollection *)traitCollection{
    return UIModalPresentationNone;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIStoryboard *s = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *a = [s instantiateViewControllerWithIdentifier:@"ViewController2"];
    a.modalPresentationStyle = UIModalPresentationPopover;
    a.view;
    UIPresentationController *aa = a.popoverPresentationController;

    a.preferredContentSize = CGSizeMake(500, 200);
    
    self.preferredContentSize
    [self pushViewController:a animated:YES];
    //[self presentViewController: a animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
