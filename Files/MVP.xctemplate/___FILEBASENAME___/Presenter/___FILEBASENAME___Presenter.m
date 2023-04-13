//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//
 
#import "___VARIABLE_mvpModuleName___Presenter.h"

@implementation ___VARIABLE_mvpModuleName___Presenter

- (instancetype)initWithInterface:(id<___VARIABLE_mvpModuleName___ViewProtocol>)interface router:(id<___VARIABLE_mvpModuleName___WireframeProtocol>)router
{
    if (self = [super init]) {
        self.view = interface;
        self.router = router;
    }
    return self;
}

- (void)configData { }

@end
