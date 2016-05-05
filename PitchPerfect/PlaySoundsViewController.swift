//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Jeffrey Shen on 5/5/16.
//  Copyright © 2016 Jeffrey Shen. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var snail: UIButton!
    @IBOutlet weak var chipmunk: UIButton!
    @IBOutlet weak var rabbit: UIButton!
    @IBOutlet weak var darth: UIButton!
    @IBOutlet weak var parrot: UIButton!
    @IBOutlet weak var reverb: UIButton!
    @IBOutlet weak var stop: UIButton!
    
    @IBAction func stopButtonPressed(sender: AnyObject) {
        print("Stop audio button pressed")
    }
    
    enum ButtonType: Int { case snail = 0, rabbit, chipmunk, darth, parrot, reverb }
    
    @IBAction func playSoundForButton(sender: UIButton) {
        print("Play sound button pressed")
        switch(ButtonType (rawValue: sender.tag)!){
        case .snail:
            playSound(rate: 0.5)
        case .rabbit:
            playSound(rate:1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .darth:
            playSound(pitch: -1000)
        case .parrot:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        configureUI(.Playing)
    }
    
    var recordedAudio : NSURL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: NSTimer!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("playSoundsViewController loaded")
        setupAudio()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        configureUI(.NotPlaying)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
