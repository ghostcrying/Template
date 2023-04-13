//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

#import <Foundation/Foundation.h>
#import "___VARIABLE_mvpModuleName___Protocols.h"
#import "___VARIABLE_mvpModuleName___ViewController.h"

@interface ___VARIABLE_mvpModuleName___Router : NSObject<___VARIABLE_mvpModuleName___WireframeProtocol>

@property (nonatomic, weak) ___VARIABLE_mvpModuleName___ViewController *viewController;

/** egs:
 *    ___VARIABLE_mvpModuleName___ViewController *controller = [___VARIABLE_mvpModuleName___Router createModule];
 *    [xxx.navigationController pushViewController:controller animated:YES];
 */
+ (UIViewController *)createModule;

@end
