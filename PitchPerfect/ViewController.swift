//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Jeffrey Shen on 5/4/16.
//  Copyright © 2016 Jeffrey Shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("hello from record button")
        recordingLabel.text = "Recording in progress"
    }
    

}

