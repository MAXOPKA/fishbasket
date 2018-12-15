//
//  WeightItem.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 02/12/2018.
//  Copyright © 2018 Дмитрий Кривенко. All rights reserved.
//

import Foundation
import UIKit

class WeightItem: UIButton {
  
  var weight: Weight
  
  init(weight: Weight) {
    self.weight = weight
    super.init(frame: .zero)
    self.setTitle("\(self.weight.min)-\(self.weight.max)", for: .normal)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
//
//  private func setupConstraints() {
//
//  }
}
