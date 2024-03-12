//
//  ViewController.swift
//  ColorizedApp
//
//  Created by OSIIOSdev on 11.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupColorizedView()
        
        showColorResult(label: redValueLabel, slider: redSlider)
        showColorResult(label: greenValueLabel, slider: greenSlider)
        showColorResult(label: blueValueLabel, slider: blueSlider)
    }
    
    @IBAction func showRedValue() {
        showColorResult(label: redValueLabel, slider: redSlider)
    }
    
    @IBAction func showGreenValue() {
        showColorResult(label: greenValueLabel, slider: greenSlider)
    }
    
    @IBAction func showBlueValue() {
        showColorResult(label: blueValueLabel, slider: blueSlider)
    }
    
    private func setupColorizedView() {
        colorizedView.layer.cornerRadius = 10
        colorizedView.layer.borderWidth = 2
        colorizedView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    private func showColorResult(label: UILabel, slider: UISlider) {
        label.text = String(format: "%.0f", slider.value)
        
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value / 100),
                                                green: CGFloat(greenSlider.value / 100),
                                                blue: CGFloat(blueSlider.value / 100), alpha: 1)
    }
}

