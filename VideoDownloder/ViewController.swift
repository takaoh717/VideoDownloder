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

    let urlList: [String] = ["https://app.coverr.co/s3/mp4/Bokeh-Go-Around.mp4", "https://app.coverr.co/s3/mp4/Cinematic_shot.mp4", "https://app.coverr.co/s3/mp4/best_buddys.mp4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSubviews()
    }
    
    func initSubviews() {
        for i in 1..<4 {
            let button = UIButton()
            view.addSubview(button)
            button.setTitle("video-\(i)", for: .normal)
            button.setTitleColor(UIColor.gray, for: .normal)
            button.frame = CGRect(x: 150, y: 150*i, width: 120, height: 50)
            button.tag = i - 1
            button.addTarget(self, action: #selector(tapVideo(_:)), for: .touchUpInside)
        }
    }
    
    @objc func tapVideo(_ sender: UIButton) {
        let controller = AVPlayerViewController()
        controller.urlString = urlList[sender.tag]
        present(controller, animated: true, completion: nil)
    }
}
