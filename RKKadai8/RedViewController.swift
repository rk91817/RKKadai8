//
//  ViewController.swift
//  RKKadai8
//
//  Created by kasai riku on 2022/09/01.
//

import UIKit

class RedViewController: UIViewController {
    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    @IBAction private func changeSliderValue(_ sender: Any) {
        sliderValueLabel.text = "\(slider.value)"
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.sharedSliderValue = slider.value
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
