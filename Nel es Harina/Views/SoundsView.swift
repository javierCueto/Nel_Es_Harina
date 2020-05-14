//
//  SoundsView.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 13/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct SoundsView: View {
    var sounds = SoundManager().soundDictionary
    var grupo : String
    var body: some View {
        VStack{
        
                
                List(){
                    ForEach(self.sounds[grupo]!, id: \.self){ sound in
                        SoundView(sound: sound)
                        
                    }
                    
                }
               
             .navigationBarTitle(Text(grupo), displayMode: .inline)
            
            
        }
    }
}

struct SoundsView_Previews: PreviewProvider {
    static var previews: some View {
        SoundsView(sounds: SoundManager().soundDictionary, grupo: "Nel es Harina")
    }
}
