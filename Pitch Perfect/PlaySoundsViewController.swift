//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Zhen Wang on 11/29/14.
//  Copyright (c) 2014 Zhen. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        {
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            // Another way, directly returns NSURL
            // NSBundle.mainBundle().URLForResource("movie_quote", withExtension: "mp3")
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            audioPlayer.enableRate = true
        }
        else
        {
            println("the filepath is empth")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.play()
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
