//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//
 
#import "___VARIABLE_mvpModuleName___Router.h"
#import "___VARIABLE_mvpModuleName___Presenter.h"
#import "___VARIABLE_mvpModuleName___ViewController.h"

@implementation ___VARIABLE_mvpModuleName___Router

+ (UIViewController *)createModule
{
    NSString *viewName = NSStringFromClass([___VARIABLE_mvpModuleName___ViewController class]);
    ___VARIABLE_mvpModuleName___ViewController *viewController = [[___VARIABLE_mvpModuleName___ViewController alloc] initWithNibName:viewName bundle:nil];
    ___VARIABLE_mvpModuleName___Router *router = [[___VARIABLE_mvpModuleName___Router alloc] init];
    ___VARIABLE_mvpModuleName___Presenter *presenter = [[___VARIABLE_mvpModuleName___Presenter alloc] initWithInterface:viewController router:router];
    viewController.presenter = presenter;
    router.viewController = viewController;
    return viewController;
}
 
@end
