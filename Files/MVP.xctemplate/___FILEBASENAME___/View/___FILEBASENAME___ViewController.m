//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

#import "___VARIABLE_mvpModuleName___ViewController.h"

@implementation ___VARIABLE_mvpModuleName___ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.presenter viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.presenter viewDidAppear:animated];
}

@end
