//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Student on 12/5/17.
//  Copyright © 2017 Jadyn Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        if toggle.isOn{
            print("The switch is on!")
        }else{
            print("The switch is off.")
        }
        print("The slider is set to \(slider.value)")
    }
    @IBOutlet weak var button: UIButton!
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is on!")
        }else{
            print("The switch is off.")
        }
    }
    @IBOutlet weak var toggle: UISwitch!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

