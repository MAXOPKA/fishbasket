//
//  WeightView.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 02/12/2018.
//  Copyright © 2018 Дмитрий Кривенко. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class WeightView: UIView {
  lazy var otherWeightField: UITextField = {
    let textField = UITextField()
    return textField
  }()
  
  var weightItems: [WeightItem] = []
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupSubviews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  private func setupSubviews() {
    // self.addSubview(counterView)
    self.addSubview(otherWeightField)
  }
  
  private func setupConstraints() {
    
  }
}
