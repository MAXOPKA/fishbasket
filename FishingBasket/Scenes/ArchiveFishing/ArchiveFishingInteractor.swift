//
//  ArchiveFishingInteractor.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol ArchiveFishingBusinessLogic {
  func doSomething(request: ArchiveFishing.Something.Request)
}

protocol ArchiveFishingDataStore {
  //var name: String { get set }
}

class ArchiveFishingInteractor: ArchiveFishingBusinessLogic, ArchiveFishingDataStore {
  var presenter: ArchiveFishingPresentationLogic?
  var worker: ArchiveFishingWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: ArchiveFishing.Something.Request) {
    worker = ArchiveFishingWorker()
    worker?.doSomeWork()
    
    let response = ArchiveFishing.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
