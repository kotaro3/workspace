//
//  ViewController.swift
//  NSDataAssetSample
//
//  Created by kotaro on 2017/02/12.
//  Copyright © 2017年 kotaro. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var soundAsset: NSDataAsset!
    var sound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        let asset = NSDataAsset(name: "sample")
        let bundle = Bundle(identifier: "com.example.NSDataAssetSample")
        let bundleAsset = NSDataAsset(name: "sample1", bundle: bundle!)
        self.soundAsset = NSDataAsset.init(name: "sound")
        if let asset = asset {
            let text = String(data: asset.data, encoding: .utf8)
            NSLog("text = \(text)")
        }
        
        if let soundAsset = soundAsset {
            self.sound = try! AVAudioPlayer(data: soundAsset.data, fileTypeHint: "wav")
            sound.play()
        }
        
        NSLog("soundasset = \(soundAsset?.description)")
        NSLog("asset = \(asset?.typeIdentifier)")
        NSLog("data = \(String(data: (asset?.data)!, encoding: .utf8)))")
        NSLog("bundleAsset = \(bundleAsset)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func soundPlay(_ sender: AnyObject) {
        sound.play()
    }
}

