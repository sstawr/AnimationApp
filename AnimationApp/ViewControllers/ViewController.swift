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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startAnimation(_ sender: UIButton) {
        animationView.animation = "pop"
        animationView.force = 2
        animationView.animate()
    }
    
}

