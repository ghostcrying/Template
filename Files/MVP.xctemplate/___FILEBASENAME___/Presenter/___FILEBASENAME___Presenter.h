//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

#import <UIKit/UIKit.h>
#import "___VARIABLE_mvpModuleName___Item.h"
#import "___VARIABLE_mvpModuleName___Protocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface ___VARIABLE_mvpModuleName___Presenter : NSObject<___VARIABLE_mvpModuleName___PresenterProtocol>

/// Page Manager
@property (nonatomic) id<___VARIABLE_mvpModuleName___WireframeProtocol> router;

/// Controller
@property (nonatomic, weak, nullable) id<___VARIABLE_mvpModuleName___ViewProtocol> view;

- (instancetype)initWithInterface:(id<___VARIABLE_mvpModuleName___ViewProtocol>)interface router:(id<___VARIABLE_mvpModuleName___WireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END
