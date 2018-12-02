//
//  FishingsRouter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

@objc protocol FishingsRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol FishingsDataPassing {
  var dataStore: FishingsDataStore? { get }
}

class FishingsRouter: NSObject, FishingsRoutingLogic, FishingsDataPassing {
  weak var viewController: FishingsViewController?
  var dataStore: FishingsDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere() {
  //  let destinationVC = SomewhereViewController()
  //  var destinationDS = destinationVC.router!.dataStore!
  //  passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  navigateToSomewhere(source: viewController!, destination: destinationVC)
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: FishingsViewController, destination: SomewhereViewController) {
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: FishingsDataStore, destination: inout SomewhereDataStore) {
  //  destination.name = source.name
  //}
}
