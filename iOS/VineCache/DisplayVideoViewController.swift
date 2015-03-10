//
//  DisplayVideoViewController.swift
//  VineCache
//
//  Created by Admin on 3/10/15.
//  Copyright (c) 2015 FuzzyGhost. All rights reserved.
//

import UIKit
import MediaPlayer

class DisplayVideoViewController: UIViewController {
    
    var moviePlayer: MPMoviePlayerController?

    override func viewDidLoad() {
        super.viewDidLoad()

        playVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("Fountain", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
        }
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
