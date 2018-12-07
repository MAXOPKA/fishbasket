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
    button.layer.cornerRadius = 64
    button.backgroundColor = UIColor.yellow
    
    return button
  }()
  
  lazy var otherWeight: UIView = {
    let view = UIView()
    
    return view
  }()
  
  lazy var timer: UILabel = {
    let label = UILabel()
    
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupSubviews()
    self.setupConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  private func setupSubviews() {
    self.addSubview(self.counterView)
    self.addSubview(self.incrementButton)
    self.addSubview(self.otherWeight)
    self.addSubview(self.timer)
  }
  
  private func setupConstraints() {
    incrementButton.snp.makeConstraints { (make) in
      make.height.width.equalTo(128)
      make.center.equalToSuperview()
    }
  }
}
