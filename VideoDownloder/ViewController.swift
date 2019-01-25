//
//  ViewController.swift
//  VideoDownloder
//
//  Created by Takao Horiguchi on 2019/01/25.
//  Copyright © 2019 takaoh717. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://app.coverr.co/s3/mp4/Bokeh-Go-Around.mp4")
        
        let player = AVPlayer(url: url!)
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        view.layer.addSublayer(playerLayer)
        
        player.play()
    }
}

