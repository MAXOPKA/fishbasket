//
//  ArchiveFishingConfigurator.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

final class ArchiveFishingConfigurator {
  
  static let sharedInstance = ArchiveFishingConfigurator()
  
  func configure(viewController: ArchiveFishingViewController) {
    
    let presenter = ArchiveFishingPresenter()
    presenter.viewController = viewController
    
    let interactor = ArchiveFishingInteractor()
    interactor.presenter = presenter
    
    let router = ArchiveFishingRouter()
    router.viewController = viewController
    router.dataStore = interactor
    
    viewController.interactor = interactor
    viewController.router = router
  }
}
