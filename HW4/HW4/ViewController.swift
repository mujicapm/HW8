//
//  ViewController.swift
//  HW4
//
//  Created by Mauro Mujica-Parodi on 2/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var powerStatus: UILabel!
    @IBOutlet weak var volumeValue: UILabel!
    @IBOutlet weak var channelValue: UILabel!
    @IBOutlet weak var powerSwitch: UISwitch!
    @IBOutlet weak var volumeSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        powerStatus.text = (powerSwitch.isOn ? "on" : "off")
        volumeValue.text = "\(Int(volumeSlider.value))"
    }

    @IBAction func togglePower(_ sender: UISwitch) {
        powerStatus.text = (sender.isOn ? "on": "off")
    }
    
    @IBAction func volumeChange(_ sender: UISlider) {
        volumeValue.text = "\(Int(sender.value))"
    }
}

