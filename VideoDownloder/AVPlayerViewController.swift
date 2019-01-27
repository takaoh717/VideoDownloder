//
//  AVPlayerViewController.swift
//  VideoDownloder
//
//  Created by Takao Horiguchi on 2019/01/25.
//  Copyright © 2019 takaoh717. All rights reserved.
//

import UIKit
import AVFoundation

class AVPlayerViewController: UIViewController {

    public var urlString: String! {
        didSet {
            loadVideo(url: urlString)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let closeButton = UIButton()
        view.addSubview(closeButton)
        closeButton.setTitle("close", for: .normal)
        closeButton.setTitleColor(UIColor.gray, for: .normal)
        closeButton.frame = CGRect(x: view.frame.width/2 - 60, y: view.frame.height - 300, width: 120, height: 50)
        closeButton.addTarget(self, action: #selector(close(_:)), for: .touchUpInside)

    }
    
    func loadVideo(url: String) {
        let url = URL(string: url)
        
        let player = AVPlayer(url: url!)
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        view.layer.addSublayer(playerLayer)
        
        player.play()
    }
    
    @objc func close (_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
