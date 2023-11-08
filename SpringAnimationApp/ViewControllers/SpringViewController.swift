//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Лилия Андреева on 08.11.2023.
//

import UIKit
import SpringAnimation

final class SpringViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var springLabel: SpringLabel!
    @IBOutlet weak var startButton: SpringButton!
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        springLabel.animation = "zoomIn"
        
        springLabel.text = animation.describe
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        
        springView.animate()
        springLabel.animate()
        
        animation = Animation.getRandomAnimation()
        startButton.setTitle(animation.preset, for: .normal)
        
    }
}


