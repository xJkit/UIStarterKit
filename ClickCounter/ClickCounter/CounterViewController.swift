//
//  ViewController.swift
//  ClickCounter
//
//  Created by joey54780 on 4/21/16.
//  Copyright © 2016 SweetJohn. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func counter(){
        ctr += 1
        counterLabel.text = String(ctr)
    }

}

