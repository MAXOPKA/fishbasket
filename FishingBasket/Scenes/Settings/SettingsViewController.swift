//
//  SettingsViewController.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol SettingsDisplayLogic: class {
  func displaySomething(viewModel: Settings.Something.ViewModel)
}

class SettingsViewController: UIViewController, SettingsDisplayLogic {
  var interactor: SettingsBusinessLogic?
  var router: (NSObjectProtocol & SettingsRoutingLogic & SettingsDataPassing)?

  // MARK: - Object lifecycle
  
  init(configurator: SettingsConfigurator = SettingsConfigurator.sharedInstance) {
    super.init(nibName: nil, bundle: nil)
    configure()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    configure()
  }
  
  // MARK: - Configure
  
  private func configure(configurator: SettingsConfigurator = SettingsConfigurator.sharedInstance) {
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
    doSomething()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    setupConstraints()
  }
  
  // MARK: - Do something
  
  func doSomething() {
    let request = Settings.Something.Request()
    interactor?.doSomething(request: request)
  }
  
  func displaySomething(viewModel: Settings.Something.ViewModel) {
    //name.text = viewModel.name
  }
  
  // MARK: - Setup UI
  
  //lazy var button: UIButton = {
  //  var button = UIButton()
  //  button.addTarget(self, action: #selector(action), for: .touchUpInside)
  //  return button
  //}()
  
  private func setupViews() {
    //self.view.addSubview(button)
  }
  
  private func setupConstraints() {
    //self.button.snp.makeConstraints { (make) -> Void in
    //  make.size.equalTo(50)
    //  make.top.equalToSuperview()
    //}
  }
}
