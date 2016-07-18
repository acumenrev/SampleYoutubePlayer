//
//  MainViewController.swift
//  SampleYoutubePlayer
//
//  Created by Tri Vo on 7/18/16.
//  Copyright © 2016 acumenvn. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class MainViewController: UIViewController {

    @IBOutlet var myYTPlayer: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myYTPlayer.delegate = self
        // Do any additional setup after loading the view.
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

    @IBAction func btnPlay_Touched(sender: AnyObject) {
    
        myYTPlayer.loadWithVideoId("GXJaVe3z9Uk")
    }
}

extension MainViewController : YTPlayerViewDelegate {
    func playerViewDidBecomeReady(playerView: YTPlayerView) {
        
    }
    
    func playerView(playerView: YTPlayerView, didPlayTime playTime: Float) {
        
    }
    
    func playerView(playerView: YTPlayerView, didChangeToState state: YTPlayerState) {
        switch state {
        case .Buffering:
            break
        case .Ended:
            break
        case .Paused:
            break
        case .Playing:
            break
        case .Queued:
            break
        case .Unknown:
            break
        case .Unstarted:
            break
        default:
            break
        }
    }
    
    func playerViewPreferredWebViewBackgroundColor(playerView: YTPlayerView) -> UIColor {
        return UIColor.blueColor()
    }
    
    func playerView(playerView: YTPlayerView, didChangeToQuality quality: YTPlaybackQuality) {
        switch quality {
        case .Auto:
            break
        case .Default:
            break
        case .HD1080:
            break
        case .HD720:
            break
        case .HighRes:
            break
        case .Large:
            break
        case .Medium:
            break
        case .Small:
            break
        case .Unknown:
            break
        default:
            break
        }
    }
}