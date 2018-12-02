//
//  SettingsPresenter.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol SettingsPresentationLogic {
  func presentSomething(response: Settings.Something.Response)
}

class SettingsPresenter: SettingsPresentationLogic {
  weak var viewController: SettingsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Settings.Something.Response) {
    let viewModel = Settings.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
