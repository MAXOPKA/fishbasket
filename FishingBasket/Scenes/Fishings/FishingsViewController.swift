//
//  FishingsViewController.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit
import SnapKit

protocol FishingsDisplayLogic: class {
  func displayFishings(viewModel: Fishings.Show.ViewModel)
}

class FishingsViewController: UIViewController, FishingsDisplayLogic {
  var interactor: FishingsBusinessLogic?
  var router: (NSObjectProtocol & FishingsRoutingLogic & FishingsDataPassing)?

  // MARK: - Setup UI
  
  
  // MARK: - Object lifecycle
  
  init(configurator: FishingsConfigurator = FishingsConfigurator.sharedInstance) {
    super.init(nibName: nil, bundle: nil)
    configure()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    configure()
  }
  
  // MARK: - Configure
  
  private func configure(configurator: FishingsConfigurator = FishingsConfigurator.sharedInstance) {
    configurator.configure(viewController: self)
  }
  
  // MARK: - Routing
  
  //@objc func action(sender: UIButton!) {
  //  router.routeToSomewhere()
  //}
  
  // MARK: - View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    doShow()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    setupConstraints()
  }
  
  // MARK: - Do something
  
  func doShow() {
    let request = Fishings.Show.Request()
    interactor?.doShow(request: request)
  }
  
  func displayFishings(viewModel: Fishings.Show.ViewModel) {
    //name.text = viewModel.name
  }
  
  private func setupViews() {

  }
  
  private func setupConstraints() {

  }
  
  private func setNavigation() {
    self.navigationController?.show(self, sender: nil)
  }
}
