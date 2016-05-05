//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Jeffrey Shen on 5/4/16.
//  Copyright © 2016 Jeffrey Shen. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        stopRecordingButton.enabled = false
        recordButton.enabled = true
        recordingLabel.text = "Tap to record"
    }
    
    override func viewWillAppear(animated: Bool) {
        print("view will appear loaded")
    }
    
    
    

}

