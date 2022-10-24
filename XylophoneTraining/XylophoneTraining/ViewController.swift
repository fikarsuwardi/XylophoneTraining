//
//  ViewController.swift
//  XylophoneTraining
//
//  Created by Zulfikar Abdul Rahman Suwardi on 20/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
  
  var player: AVAudioPlayer!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func buttonPressed(_ sender: UIButton) {
    // buat print teks sesuai nada
    let labelButton = sender.titleLabel?.text
    if let text = labelButton {
      print(text)
    }
    
    // buat play music
    playSound(labelButton: labelButton!)
    
    // buat ngurangin opacity
    sender.alpha = 0.5
    
    // buat balikin opacity ke awal
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
      sender.alpha = 1.0
    }
  }
  
  func playSound(labelButton: String) {
    let url = Bundle.main.url(forResource: labelButton, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
    
  }
}


