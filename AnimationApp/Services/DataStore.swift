//
//  DataStore.swift
//  AnimationApp
//
//  Created by Evgeni Glushko on 27.01.24.
//

import Foundation
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    private init() {}
}
