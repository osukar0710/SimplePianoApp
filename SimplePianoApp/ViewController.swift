//
//  ViewController.swift
//  SimplePianoApp
//
//  Created by osukar on 2022/10/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//キーボード再生
    @IBAction func soundKeybutton(_ sender: UIButton) {
        print("③===============")
        print(sender.titleLabel!.text ?? "nil")
        
        playSound(soundName: sender.titleLabel!.text ?? "nil")
        sender.backgroundColor = UIColor.blue
        sender.alpha = 0.3
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.backgroundColor = UIColor.white
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
                
    }
}


