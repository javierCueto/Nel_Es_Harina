//
//  SoundPlay.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 14/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//


import AVFoundation

class SoundPlay{
    var audioPlayer: AVAudioPlayer!
        
    func playSound(toPlay: String ){
     
     let soundPlay = toPlay
     print(soundPlay)
         let soundURL = Bundle.main.url(forResource:soundPlay, withExtension: "m4a")
         do{
             try AVAudioSession.sharedInstance().setCategory(.playback)
             try audioPlayer = AVAudioPlayer(contentsOf:soundURL!)
         }catch{
             print(error)
         }
         audioPlayer.play()
     }
}
