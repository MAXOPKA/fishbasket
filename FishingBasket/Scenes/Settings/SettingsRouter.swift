//
//  SettingsRouter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

@objc protocol SettingsRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol SettingsDataPassing {
  var dataStore: SettingsDataStore? { get }
}

class SettingsRouter: NSObject, SettingsRoutingLogic, SettingsDataPassing {
  weak var viewController: SettingsViewController?
  var dataStore: SettingsDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere() {
  //  let destinationVC = SomewhereViewController()
  //  var destinationDS = destinationVC.router!.dataStore!
  //  passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  navigateToSomewhere(source: viewController!, destination: destinationVC)
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: SettingsViewController, destination: SomewhereViewController) {
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: SettingsDataStore, destination: inout SomewhereDataStore) {
  //  destination.name = source.name
  //}
}
