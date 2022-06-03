//
//  ViewController.swift
//  Home work 2.2
//
//  Created by Tamirlan on 30.05.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColorTrafficLight: UIView!
    @IBOutlet var yellowColorTrafficLight: UIView!
    @IBOutlet var greenColorTrafficLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorTrafficLight.alpha = lightIsOff
        yellowColorTrafficLight.alpha = lightIsOff
        greenColorTrafficLight.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redColorTrafficLight.layer.cornerRadius = redColorTrafficLight.frame.width / 2
        yellowColorTrafficLight.layer.cornerRadius = redColorTrafficLight.frame.width / 2
        greenColorTrafficLight.layer.cornerRadius = redColorTrafficLight.frame.width / 2
    }
    
    @IBAction func buttonStartAction() {
        
        startButton.setTitle("NEXT COLOR", for: .normal)
        
        switch currentLight {
        case .red:
            greenColorTrafficLight.alpha = lightIsOff
            redColorTrafficLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redColorTrafficLight.alpha = lightIsOff
            yellowColorTrafficLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenColorTrafficLight.alpha = lightIsOn
            yellowColorTrafficLight.alpha = lightIsOff
            currentLight = .red
        }
    }
    

}

