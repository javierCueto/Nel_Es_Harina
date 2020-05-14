//
//  Sounds.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 02/12/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI



class SoundManager: ObservableObject {
    
     var sounds = [Sound]()
    @Published var soundDictionary = Dictionary<String, [Sound]>()
    
    
    init (){
        createObject()
    }
    
    func createObject(){
        sounds = [
            Sound(id: UUID(), name: "A que Chingon", nameAudio: "aQueChingon", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Un cumbion bien loco", nameAudio: "cumbionLocoFull", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Dame un segundito", nameAudio: "dameUnSegundito", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Hay papaya", nameAudio: "hayPapaya", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Nel es Harina", nameAudio: "nelEsHarina", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "No todavia No", nameAudio: "noTodaviaNo", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Que me ve ramirez", nameAudio: "queMeVeRamirez", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Que pedal", nameAudio: "quePedal", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Que pedo", nameAudio: "quePedo", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Que se armen los pinch.. ", nameAudio: "queSeArmenFull", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Que se armenn (Short)", nameAudio: "queSeArmenShort", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Que tenemos Ramirez", nameAudio: "queTenemosRamirez", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Santa madre que pedo", nameAudio: "santaMadreQuePedo", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Srrr ho ho", nameAudio: "srrHo", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Tu tranquila yo nerviosa", nameAudio: "tranquilaYoNerviosa", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Tranquilo tranquila", nameAudio: "tranquiloTranquila", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Tus hijos vuelan", nameAudio: "tusHijosVuelan", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Yo soy inevitable", nameAudio: "inevitable", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "A que Chingon", nameAudio: "cellTerror", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Esto es Espartan", nameAudio: "estoEspartan", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Hasta la vista baby", nameAudio: "hastaLaVista", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "James Bond", nameAudio: "jameB", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Que la fuerza te acompañe", nameAudio: "laFuerza", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Libertad", nameAudio: "libertad", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Marica", nameAudio: "marica", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Mi preciosa", nameAudio: "miPreciosa", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Porque tan serio", nameAudio: "porqueTanSerio", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "This is Spartan", nameAudio: "thisSpartan", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Todo se derrumbo", nameAudio: "todoSeDerrumbo", image: nil, classification: "Música"),
            Sound(id: UUID(), name: "Veo gente muerta", nameAudio: "veoGenteDead", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Jamon chingon", nameAudio: "jamonChingon", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Vamonos perras", nameAudio: "vamosPerrasFull", image: nil, classification: "Nel es Harina"),
             Sound(id: UUID(), name: "Vamonos perras (Short)", nameAudio: "vamonosP", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Si supo", nameAudio: "siSupo", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Yo soy tu padre", nameAudio: "yoSoyTuPadre", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Todo teniente", nameAudio: "todoTeniente", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Y esta quien es", nameAudio: "yEstaQuienEs", image: nil, classification: "Nel es Harina"),
            Sound(id: UUID(), name: "Obligame perro", nameAudio: "obligame", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "La convencion", nameAudio: "laConvencion", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Compradre lo quiero mucho", nameAudio: "LoQuieroMucho", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Que bonitos ojos tiene", nameAudio: "queBonitosOjos", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Tenemos un 3312", nameAudio: "3312", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Otro gato", nameAudio: "otroGato", image: nil, classification: "Peliculas y caricaturas"),
            Sound(id: UUID(), name: "Todo se termino señores", nameAudio: "todoTermino", image: nil, classification: "Peliculas y caricaturas"),
            
        ]
 
          soundDictionary =  Dictionary(grouping: sounds, by: { $0.classification } )

    }
    
    
 
}
