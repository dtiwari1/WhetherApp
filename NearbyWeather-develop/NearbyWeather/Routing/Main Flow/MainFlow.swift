//
//  MainFlow.swift
//  NearbyWeather
//
//  Created by Deepak Tiwari on 16.07.20.
//  Copyright © 2020 Deepak Tiwari. All rights reserved.
//

import RxFlow

final class MainFlow: Flow {
  
  // MARK: - Assets
  
  var root: Presentable {
    rootViewController
  }
  
  private lazy var rootViewController: UITabBarController = {
    let tabbar = UITabBarController()
    tabbar.tabBar.backgroundColor = Constants.Theme.Color.ViewElement.background
    tabbar.tabBar.barTintColor = Constants.Theme.Color.ViewElement.background
    tabbar.tabBar.tintColor = Constants.Theme.Color.BrandColors.standardDay
    return tabbar
  }()
  
  // MARK: - Initialization
  
  init() {}
  
  deinit {
    printDebugMessage(domain: String(describing: self), message: "was deinitialized")
  }
  
  // MARK: - Functions
  
  func navigate(to step: Step) -> FlowContributors {
    guard let step = step as? MainStep else {
      return .none
    }
    switch step {
    case .main:
      return summonRootTabBar()
    }
  }
}

private extension MainFlow {
  
  func summonRootTabBar() -> FlowContributors {
    
    let listFlow = ListFlow()
    let mapFlow = MapFlow()
    
    Flows.whenReady(
      flow1: listFlow,
      flow2: mapFlow
    ) { [rootViewController] (listRoot: UINavigationController, mapRoot: UINavigationController) in
      rootViewController.viewControllers = [
        listRoot,
        mapRoot,
      ]
    }
    
    return .multiple(flowContributors: [
      .contribute(withNextPresentable: listFlow, withNextStepper: ListStepper()),
      .contribute(withNextPresentable: mapFlow, withNextStepper: MapStepper()),
    ])
  }
}
