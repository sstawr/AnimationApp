//
//  ViewController.swift
//  AnimationApp
//
//  Created by Evgeni Glushko on 27.01.24.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetName: UILabel!
    @IBOutlet var curveName: UILabel!
    @IBOutlet var forceValue: UILabel!
    @IBOutlet var durationValue: UILabel!
    @IBOutlet var delayValue: UILabel!
    
    private let randomAnimation = RandomAnimation()
    
    private var isFirstButtonTap = true
    private var nextAnimation = ""
    
    @IBAction func startAnimation(_ sender: UIButton) {
                
        let force: CGFloat
        let duration: CGFloat
        let delay: CGFloat
        
        
        if isFirstButtonTap {
            animationView.animation = presetName.text ?? ""
            animationView.curve = curveName.text ?? ""
            
            force = CGFloat(Float(forceValue.text ?? "") ?? 0.0)
            duration = CGFloat(Float(durationValue.text ?? "") ?? 0.0)
            delay = CGFloat(Float(delayValue.text ?? "") ?? 0.0)
            
            isFirstButtonTap.toggle()
        } else {
            presetName.text = nextAnimation
            animationView.animation = nextAnimation
            
            let randomCurve = randomAnimation.getRandomCurve
            curveName.text = randomCurve
            animationView.curve = randomCurve
            
            force = randomAnimation.getRandomForce
            duration = randomAnimation.getRandomDuration
            delay = randomAnimation.getRandomDelay
        }
        
        animationView.force = force
        animationView.duration = duration
        animationView.delay = delay
        animationView.animate()
        
        forceValue.text = String(format: "%.2f", force)
        durationValue.text = String(format: "%.2f", duration)
        delayValue.text = String(format: "%.2f", delay)
        
        nextAnimation = randomAnimation.getRandomAnimation
        sender.setTitle("Run \(nextAnimation)", for: .normal)
        
        
    }
    
}

