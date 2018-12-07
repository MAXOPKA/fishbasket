//
//  FishingViewController.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

protocol FishingDisplayLogic: class {
  func displayFishing(viewModel: Fishing.Show.ViewModel)
}

class FishingViewController: UIViewController, FishingDisplayLogic {
  var interactor: FishingBusinessLogic?
  var router: (NSObjectProtocol & FishingRoutingLogic & FishingDataPassing)?

  // MARK: - Object lifecycle
  
  init(configurator: FishingConfigurator = FishingConfigurator.sharedInstance) {
    super.init(nibName: nil, bundle: nil)
    configure()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    configure()
  }
  
  // MARK: - Configure
  
  private func configure(configurator: FishingConfigurator = FishingConfigurator.sharedInstance) {
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
    let request = Fishing.Show.Request()
    interactor?.doSomething(request: request)
  }
  
  func displayFishing(viewModel: Fishing.Show.ViewModel) {
    //name.text = viewModel.name
  }
  
  // MARK: - Setup UI
  
  lazy var fishesView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.gray
    return view
  }()
  
  lazy var counterView: UIView = {
    let view = CounterView()
    view.backgroundColor = UIColor.red
    return view
  }()
  
  lazy var weightView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.green
    return view
  }()
  
  private func setupViews() {
    self.view.addSubview(self.fishesView)
    self.view.addSubview(self.counterView)
    self.view.addSubview(self.weightView)
  }
  
  private func setupConstraints() {
    self.fishesView.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.height.equalToSuperview().multipliedBy(0.26)
      maker.top.equalToSuperview()
    }
    
    self.counterView.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalTo(self.fishesView.snp.bottom)
      maker.bottom.equalTo(self.weightView.snp.top)
    }
    
    self.weightView.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalTo(self.counterView.snp.bottom)
      maker.bottom.equalTo(self.view)
      maker.height.equalToSuperview().multipliedBy(0.26)
    }
    
    self.view.snp.makeConstraints { (maker) in
      maker.size.equalTo(UIScreen.main.bounds.size)
      maker.top.equalTo(0)
      maker.left.equalTo(0)
    }
  }
}
