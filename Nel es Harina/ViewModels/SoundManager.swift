//
//  Sounds.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 02/12/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import Foundation
import AVFoundation


struct Sounds {
    var audioPlayer: AVAudioPlayer!
    let soundArray=["aQueChingon","cumbionLocoFull","dameUnSegundito","hayPapaya","nelEsHarina","noTodaviaNo","queMeVeRamirez","quePedal","quePedo","queSeArmenFull","queSeArmenShort","queTenemosRamirez","santaMadreQuePedo","srrHo","tranquilaYoNerviosa","tranquiloTranquila","tusHijosVuelan","vamonosP","inevitable","cellTerror","estoEspartan","hastaLaVista","jameB","laFuerza","libertad","marica","miPreciosa","porqueTanSerio","thisSpartan","todoSeDerrumbo","veoGenteDead","yoSoyTuPadre","jamonChingon","siSupo","todoTeniente","vamosPerrasFull","yEstaQuienEs","obligame","laConvencion","LoQuieroMucho","queBonitosOjos","3312","otroGato","todoTermino"]
    
   mutating func playSound(toPlay: Int? ){
    
    let soundPlay = soundArray[(toPlay ?? 1)-1]
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
