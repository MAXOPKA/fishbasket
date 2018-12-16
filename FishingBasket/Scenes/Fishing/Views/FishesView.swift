//
//  FishesView.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 02/12/2018.
//  Copyright © 2018 Дмитрий Кривенко. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class FishesView: UIView {
  var fishItems: [FishItem] = []
  
  lazy var topStack: UIStackView = {
    let stack = UIStackView()
    
    return stack
  }()
  
  lazy var bottomStack: UIStackView = {
    let stack = UIStackView()
    
    return stack
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
    self.setupStackOfFishes(stack: self.topStack)
    self.setupStackOfFishes(stack: self.bottomStack)
    self.addSubview(self.topStack)
    self.addSubview(self.bottomStack)
  }
  
  private func setupConstraints() {
    self.topStack.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalToSuperview()
    }
    
    self.bottomStack.snp.makeConstraints { (maker) in
      maker.width.equalToSuperview()
      maker.top.equalTo(self.topStack.snp.bottom)
    }
  }
  
  private func setupStackOfFishes(stack: UIStackView) {
    let species = Species()
    species.name = "Сазаааан"
    let specieses = [species, species, species, species]
    specieses.forEach { (item) in
      let fishLabel = FishItem(species: item)
      stack.addArrangedSubview(fishLabel)
    }
  }
}
