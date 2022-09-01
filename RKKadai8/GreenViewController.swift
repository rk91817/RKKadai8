//
//  GreenViewController.swift
//  RKKadai8
//
//  Created by kasai riku on 2022/09/01.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    private var sliderValue: Float = 0
    
    @IBAction private func changeSliderValue(_ sender: Any) {
        sliderValue = slider.value
        sliderValueLabel.text = "\(sliderValue)"
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.sharedSliderValue = sliderValue
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            sliderValueLabel.text = "\(delegate.sharedSliderValue)"
            slider.setValue(delegate.sharedSliderValue, animated: false)
        }
    }
}
