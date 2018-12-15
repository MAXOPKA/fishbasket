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
  
  lazy var topWeightsRow: UIStackView = {
    let stackView = UIStackView()
    
    return stackView
  }()
  
  lazy var bottomWeightsView: UIStackView = {
    let stackView = UIStackView()
    
    return stackView
  }()
  
  var weightItems: [WeightItem] = []
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupSubviews()
    self.setupConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  private func setupSubviews() {
    self.addSubview(self.topWeightsRow)
    self.addSubview(self.bottomWeightsView)
    self.addSubview(self.otherWeightField)
    self.setupWeights()
  }
  
  private func setupConstraints() {
    self.topWeightsRow.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalToSuperview()
    }
    
    self.bottomWeightsView.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalTo(self.topWeightsRow.snp.bottom)
    }
    
    self.otherWeightField.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalTo(self.otherWeightField)
    }
  }
  
  private func setupWeights() {
    let weightsTop = [[FP_ZERO, 50], [50, 100], [100, 200], [200, 500]]
    let weightsBottom = [[500, 1000], [1000, 2000], [2000, 4000], [4000, FP_INFINITE]]
    
    self.setupStackOfWeights(stack: self.topWeightsRow, weights: weightsTop)
    self.setupStackOfWeights(stack: self.bottomWeightsView, weights: weightsBottom)
  }
  
  private func setupStackOfWeights(stack: UIStackView, weights: [[Int32]]) {
    weights.forEach { (weightRange) in
      let weight = Weight(min: weightRange[0], max: weightRange[1])
      let weightLabel = WeightItem(weight: weight)
      stack.addArrangedSubview(weightLabel)
    }
  }
}
