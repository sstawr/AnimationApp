//
//  RandomAnimation.swift
//  AnimationApp
//
//  Created by Evgeni Glushko on 27.01.24.
//

import Foundation

struct RandomAnimation {
    let dataStore = DataStore.shared
    
    var getRandomAnimation: String {
        dataStore.animations.randomElement()?.rawValue ?? ""
    }
    
    var getRandomCurve: String {
        dataStore.curve.randomElement()?.rawValue ?? ""
    }
    
    var getRandomForce: CGFloat {
        CGFloat.random(in: 1.0...5.0)
    }
    
    var getRandomDuration: CGFloat {
        CGFloat.random(in: 0.5...1.5)
    }
    
    var getRandomDelay: CGFloat {
        CGFloat.random(in: 0.1...0.5)
    }
}
