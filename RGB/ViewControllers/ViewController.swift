//
//  ViewController.swift
//  RGB
//
//  Created by Alisa Pushnova on 9/23/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorButtons: [UIButton]!
    
    @IBOutlet weak var clickOnMeButton: UIButton!
    
    @IBOutlet var colorSliders: [UISlider]!
    
    @IBOutlet var sliderLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }
    
    
    @IBAction func changeSliderValue(_ selectedSlider: UISlider) {
        let indexColor = colorSliders.firstIndex(of: selectedSlider)
        sliderLabels[indexColor!].text = String(Int(colorSliders[indexColor!].value))
        updateColor()
    }
    
    
   private func updateColor() {
        clickOnMeButton.backgroundColor = UIColor(displayP3Red: CGFloat(Float(sliderLabels[0].text!)!) / 255.0,
                                                  green: CGFloat(Float(sliderLabels[1].text!)!) / 255.0,
                                                  blue: CGFloat(Float(sliderLabels[2].text!)!) / 255.0, alpha: 1.0)
    
        let oppositeClickOnMeButtonColor = UIColor(displayP3Red: CGFloat(255.0 - Float(sliderLabels[0].text!)!) / 255.0,
                                                   green: CGFloat(255.0 - Float(sliderLabels[1].text!)!) / 255.0,
                                                   blue: CGFloat(255.0 - Float(sliderLabels[2].text!)!) / 255.0, alpha: 1.0)
    
        clickOnMeButton.setTitleColor(oppositeClickOnMeButtonColor, for: .normal)
    }

    
    @IBAction func changeColorToView(_ button: UIButton) {
       
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ShowColorViewController") as! ShowColorViewController
        vc.changeBackgroundColor = button.backgroundColor
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
        
        
    }
}

