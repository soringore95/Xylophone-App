////
////  ViewController.swift
////  Xylophone
////
////  Created by Angela Yu on 28/06/2019.
////  Copyright © 2019 The App Brewery. All rights reserved.
////
//
//import UIKit
//import AVFoundation
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    
//    let pianoSound = URL(fileURLWithPath: Bundle.main.path(forResource: "C", ofType: "wav")!)
//    var audioPlayer = AVAudioPlayer()
//    
//    let pianoSound2 = URL(fileURLWithPath: Bundle.main.path(forResource: "D", ofType: "wav")!)
//    var audioPlayer2 = AVAudioPlayer()
//    
//    let pianoSound3 = URL(fileURLWithPath: Bundle.main.path(forResource: "E", ofType: "wav")!)
//    var audioPlayer3 = AVAudioPlayer()
//    
//    let pianoSound4 = URL(fileURLWithPath: Bundle.main.path(forResource: "F", ofType: "wav")!)
//    var audioPlayer4 = AVAudioPlayer()
//    
//    let pianoSound5 = URL(fileURLWithPath: Bundle.main.path(forResource: "G", ofType: "wav")!)
//    var audioPlayer5 = AVAudioPlayer()
//    
//    let pianoSound6 = URL(fileURLWithPath: Bundle.main.path(forResource: "A", ofType: "wav")!)
//    var audioPlayer6 = AVAudioPlayer()
//    
//    let pianoSound7 = URL(fileURLWithPath: Bundle.main.path(forResource: "B", ofType: "wav")!)
//    var audioPlayer7 = AVAudioPlayer()
//    
//    
//
//    @IBAction func keyPressed(_ sender: UIButton) {
//        
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: pianoSound)
//            audioPlayer.play()
//        } catch {
//            // couldn't load file :(
//        }
//        
//    }
//    
//    @IBAction func dKeyPressed(_ sender: UIButton) {
//        do {
//            audioPlayer2 = try AVAudioPlayer(contentsOf: pianoSound2)
//            audioPlayer2.play()
//        } catch {
//            // couldn't load file :(
//        }
//    }
//    
//    
//    @IBAction func eKeyPressed(_ sender: UIButton) {
//        do {
//            audioPlayer3 = try AVAudioPlayer(contentsOf: pianoSound3)
//            audioPlayer3.play()
//        } catch {
//            // couldn't load file :(
//        }
//    }
//    
//    
//    @IBAction func fKeyPressed(_ sender: UIButton) {
//        do {
//            audioPlayer4 = try AVAudioPlayer(contentsOf: pianoSound4)
//            audioPlayer4.play()
//        } catch {
//            // couldn't load file :(
//        }
//    }
//    
//    @IBAction func gKeyPressed(_ sender: UIButton) {
//        do {
//            audioPlayer5 = try AVAudioPlayer(contentsOf: pianoSound5)
//            audioPlayer5.play()
//        } catch {
//            // couldn't load file :(
//        }
//    }
//    
//    
//    @IBAction func aKeyPressed(_ sender: UIButton) {
//        do {
//            audioPlayer6 = try AVAudioPlayer(contentsOf: pianoSound6)
//            audioPlayer6.play()
//        } catch {
//            // couldn't load file :(
//        }
//    }
//    
//    @IBAction func bKeyPressed(_ sender: UIButton) {
//        do {
//            audioPlayer7 = try AVAudioPlayer(contentsOf: pianoSound7)
//            audioPlayer7.play()
//        } catch {
//            // couldn't load file :(
//        }
//    }
//    
//    
//}
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)

        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
          }
        print("End")
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

