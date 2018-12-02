//
//  SettingsInteractor.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol SettingsBusinessLogic {
  func doSomething(request: Settings.Something.Request)
}

protocol SettingsDataStore {
  //var name: String { get set }
}

class SettingsInteractor: SettingsBusinessLogic, SettingsDataStore {
  var presenter: SettingsPresentationLogic?
  var worker: SettingsWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Settings.Something.Request) {
    worker = SettingsWorker()
    worker?.doSomeWork()
    
    let response = Settings.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
