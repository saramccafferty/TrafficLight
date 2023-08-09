//
//  ViewController.swift
//  trafficLight
//
//  Created by Sara on 5/10/2022.
//

import UIKit

class ViewController: UIViewController {

    
    //These are images which show the lights on
    @IBOutlet var redLightOn: UIImageView!
    @IBOutlet var amberLightOn: UIImageView!
    @IBOutlet var greenLightOn: UIImageView!
    
    //This label updates the user on what light is next in sequence
    @IBOutlet var headerLabel: UILabel!
    
    //This label updates the user on the colour of the light selected
    @IBOutlet var titleLabel: UILabel!
    
    //This label provides the user with a discription of what each light means
    @IBOutlet var informationLabel: UILabel!
    
    //The buttons for each traffic light colour
    @IBOutlet var redButton: UIButton!
    @IBOutlet var amberButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        redLightOn.isHidden = true
        amberLightOn.isHidden = true
        greenLightOn.isHidden = true
    }
    
    var currentTrafficLight = "red"
    //This function enforces the user selects next light in the sequence and turns on the light pressed
    func updateLights() {
        if currentTrafficLight == "red" {
            greenButton.isEnabled = true
            amberButton.isEnabled = false
            redLightOn.isHidden = false
            amberLightOn.isHidden = true
        }
        else if currentTrafficLight == "amber" {
            greenButton.isEnabled = false
            redButton.isEnabled = true
            amberLightOn.isHidden = false
            greenLightOn.isHidden = true
        }
        else {
            amberButton.isEnabled = true
            redButton.isEnabled = false
            redLightOn.isHidden = true
            greenLightOn.isHidden = false
        }

    }
    
    //The buttons update each of the labels and traffic light images based on the users selection
    @IBAction func redLightPressed(_ sender: UIButton) {
        currentTrafficLight = "red"
        updateLights()
        headerLabel.text = "After red comes green"
        titleLabel.text = "Red"
        titleLabel.textColor = .red
        //new lines have been added as I wasn't able to allign the text to the top of the label
        informationLabel.text = "Red means you must stop and cannot enter the intersection. You need to remain stopped until the traffic light turns green.\n \n \n "
    }
    
    @IBAction func amberLightPressed(_ sender: UIButton) {
        currentTrafficLight = "amber"
        updateLights()
        headerLabel.text = "After amber comes red"
        titleLabel.text = "Amber"
        titleLabel.textColor = .orange
        //new lines have been added as I wasn't able to allign the text to the top of the label
        informationLabel.text = "Amber means you need to slow down and stop before you reach the intersection. It is important to be aware of your surroundings and should only stop of it is safe to do so.\n \n"
    }
    
    @IBAction func greenLightPressed(_ sender: UIButton) {
        currentTrafficLight = "green"
        updateLights()
        headerLabel.text = "After green comes amber"
        titleLabel.text = "Green"
        titleLabel.textColor = .green
        //new lines have been added as I wasn't able to allign the text to the top of the label
        informationLabel.text = "Green means go! It is safe for you to proceed through the intersection.\n \n \n \n \n "        
    }

    
}

