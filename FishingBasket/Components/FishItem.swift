//
//  FishItem.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 02/12/2018.
//  Copyright © 2018 Дмитрий Кривенко. All rights reserved.
//

import Foundation
import UIKit

class FishItem: UIButton {
  lazy var fishImage: UIImageView = {
    let image = UIImageView()
    return image
  }()
  
  var species: Species
  
  init(species: Species) {
    self.species = species
    super.init(frame: .zero)
    self.setupSubviews()
    self.setTitle(self.species.name, for: .normal)
    self.fishImage.image = UIImage()
    // self.fishImage.image.
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupSubviews() {
    self.addSubview(self.fishImage)
  }
  
  private func setupConstraints() {
    
  }
}
