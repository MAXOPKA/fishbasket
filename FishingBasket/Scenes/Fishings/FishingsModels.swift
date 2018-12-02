//
//  FishingsModels.swift
//  FishingBasket
//
//  Created by Дмитрий Кривенко on 28.09.2018.
//  Copyright (c) 2018 Дмитрий Кривенко. All rights reserved.
//

import UIKit

enum Fishings {
  // MARK: Use cases
  
  enum Show {
    struct Request {
      struct Show {
        var page: Int = 0
      }
    }
    struct Response {
      struct Show {
        struct Fishing {
          var start: String
          var end: String
          var state: FishingState
        }
      }
    }
    struct ViewModel {
      struct Show {
        struct Fishing {
          var timeStart: String = ""
          var timeEnd: String = ""
          var fishesCounter: String = ""
          var fishesWeight = ""
        }
        
        var fishings: [Fishing] = []
      }
    }
  }
}

enum FishingState {
  case inProgress
  case ended
}
