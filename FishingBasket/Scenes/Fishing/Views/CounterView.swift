//
//  CounterView.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 02/12/2018.
//  Copyright © 2018 Дмитрий Кривенко. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class CounterView: UIView {
  lazy var counterView: UIView = {
    let view = UIView()
    return view
  }()
  
  lazy var incrementButton: UIButton = {
    let button = UIButton()
    return button
  }()
  
  lazy var otherWeight: UIView = {
    let view = UIView()
    return view
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupSubviews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  private func setupSubviews() {
    self.addSubview(counterView)
    self.addSubview(incrementButton)
    self.addSubview(otherWeight)
  }
  
  private func setupConstraints() {
    
  }
}
