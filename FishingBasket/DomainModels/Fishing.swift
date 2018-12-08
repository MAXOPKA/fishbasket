//
//  Fishing.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 08/12/2018.
//  Copyright © 2018 Дмитрий Кривенко. All rights reserved.
//

import Foundation

class Fishing {
  enum States {
    case notStart
    case inProgress
    case ended
  }
  
  var state: States = .notStart
  
}
