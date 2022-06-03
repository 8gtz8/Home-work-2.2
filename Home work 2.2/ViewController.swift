//
//  ViewController.swift
//  Home work 2.2
//
//  Created by Tamirlan on 30.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorTrafficLight: UIView!
    @IBOutlet var yellowColorTrafficLight: UIView!
    @IBOutlet var greenColorTrafficLight: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorTrafficLight.layer.cornerRadius = 100
        yellowColorTrafficLight.layer.cornerRadius = 100
        greenColorTrafficLight.layer.cornerRadius = 100
        
    }

    @IBAction func makeButtonAction() {
    }
}

