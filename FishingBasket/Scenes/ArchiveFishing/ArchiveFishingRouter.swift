//
//  ArchiveFishingRouter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

@objc protocol ArchiveFishingRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ArchiveFishingDataPassing {
  var dataStore: ArchiveFishingDataStore? { get }
}

class ArchiveFishingRouter: NSObject, ArchiveFishingRoutingLogic, ArchiveFishingDataPassing {
  weak var viewController: ArchiveFishingViewController?
  var dataStore: ArchiveFishingDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere() {
  //  let destinationVC = SomewhereViewController()
  //  var destinationDS = destinationVC.router!.dataStore!
  //  passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  navigateToSomewhere(source: viewController!, destination: destinationVC)
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: ArchiveFishingViewController, destination: SomewhereViewController) {
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: ArchiveFishingDataStore, destination: inout SomewhereDataStore) {
  //  destination.name = source.name
  //}
}
