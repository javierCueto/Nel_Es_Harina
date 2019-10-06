//
//  ViewController.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 9/27/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    let soundArray=["aQueChingon","cumbionLocoFull","dameUnSegundito","hayPapaya","nelEsHarina","noTodaviaNo","queMeVeRamirez","quePedal","quePedo","queSeArmenFull","queSeArmenShort","queTenemosRamirez","santaMadreQuePedo","srrHo","tranquilaYoNerviosa","tranquiloTranquila","tusHijosVuelan","vamonosP"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonSoundPressed(_ sender: UIButton) {
        playSound(soundPlay: soundArray[sender.tag-1])
    }
    
    func playSound(soundPlay: String){
        let soundURL = Bundle.main.url(forResource:soundPlay, withExtension: "m4a")
        
        do{
            try audioPlayer = AVAudioPlayer(contentsOf:soundURL!)
        }catch{
            print(error)
        }
        audioPlayer.play()
    }
}

