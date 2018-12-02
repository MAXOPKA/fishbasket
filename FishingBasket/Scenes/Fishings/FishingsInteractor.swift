//
//  FishingsInteractor.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol FishingsBusinessLogic {
  func doSomething(request: Fishings.Show.Request)
}

protocol FishingsDataStore {
  //var name: String { get set }
}

class FishingsInteractor: FishingsBusinessLogic, FishingsDataStore {
  var presenter: FishingsPresentationLogic?
  var worker: FishingsWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Fishings.Show.Request) {
    worker = FishingsWorker()
    worker?.doSomeWork()
    
    let response = Fishings.Show.Response()
    presenter?.presentSomething(response: response)
  }
}
