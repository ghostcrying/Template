//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

#import <Foundation/Foundation.h>

#pragma mark - WireFrameProtocol

@protocol ___VARIABLE_mvpModuleName___WireframeProtocol <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol ___VARIABLE_mvpModuleName___PresenterProtocol <NSObject>

- (void)configData;

@optional
- (void)viewDidLoad;

@optional
- (void)viewWillAppear:(BOOL)animated;

@optional
- (void)viewDidAppear:(BOOL)animated;

@end

#pragma mark - ViewProtocol

@protocol ___VARIABLE_mvpModuleName___ViewProtocol <NSObject>

/** Presenter -> ViewController */

@end
