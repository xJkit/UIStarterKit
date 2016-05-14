//
//  ViewController.swift
//  colorViewSlider
//
//  Created by JoeyChung on 4/25/16.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorWindow: UIView!
    
    var redColor: CGFloat?
    var greenColor: CGFloat?
    var blueColor: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("redSlider value: \(redSlider.value)")
        print("greenSlider value: \(greenSlider.value)")
        print("blueSlider value: \(blueSlider.value)")
        
        // load the slider color
        redColor = CGFloat(redSlider.value)
        greenColor = CGFloat(greenSlider.value)
        blueColor = CGFloat(blueSlider.value)
        
        colorWindow.backgroundColor = UIColor(red: redColor!, green: greenColor!, blue: blueColor!, alpha: 1)
        
        
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loadSliderValueToRGBColor(sender: AnyObject) {
        let slider = sender as! UISlider
        switch( SliderType(rawValue: sender.tag)!){
        case .RedSlider:
//            print("This is red")
            redColor = CGFloat(slider.value)
        case .Blueslider:
//            print("This is blue")
            blueColor = CGFloat(slider.value)
        case .GreenSlider:
//            print("This is green")
            greenColor = CGFloat(slider.value)
        }
        colorWindow.backgroundColor = UIColor(red: redColor!, green: greenColor!, blue: blueColor!, alpha: 1)
    }
    

}

