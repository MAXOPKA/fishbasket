//
//  FishingRouter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

@objc protocol FishingRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol FishingDataPassing {
  var dataStore: FishingDataStore? { get }
}

class FishingRouter: NSObject, FishingRoutingLogic, FishingDataPassing {
  weak var viewController: FishingViewController?
  var dataStore: FishingDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere() {
  //  let destinationVC = SomewhereViewController()
  //  var destinationDS = destinationVC.router!.dataStore!
  //  passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  navigateToSomewhere(source: viewController!, destination: destinationVC)
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: FishingViewController, destination: SomewhereViewController) {
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: FishingDataStore, destination: inout SomewhereDataStore) {
  //  destination.name = source.name
  //}
}
