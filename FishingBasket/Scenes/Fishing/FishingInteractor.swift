//
//  FishingInteractor.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol FishingBusinessLogic {
  func doSomething(request: Fishing.Show.Request)
}

protocol FishingDataStore {
  //var name: String { get set }
}

class FishingInteractor: FishingBusinessLogic, FishingDataStore {
  var presenter: FishingPresentationLogic?
  var worker: FishingWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Fishing.Show.Request) {
    worker = FishingWorker()
    worker?.doSomeWork()
    
    let response = Fishing.Show.Response()
    presenter?.presentSomething(response: response)
  }
}
