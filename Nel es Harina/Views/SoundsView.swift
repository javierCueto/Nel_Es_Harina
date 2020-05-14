//
//  SoundsView.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 13/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct SoundsView: View {
    var sounds :  [Sound]//SoundManager().soundDictionary
    var grupo : String
    @State private var colum = 2
    var body: some View {
        //VStack{
        
        
        GeometryReader{ geometry in
            ScrollView(showsIndicators: false){
                HStack{
                    
                    ScrollView(showsIndicators: false){
                        VStack(){
                            
                            ForEach(self.sounds.count/2..<self.sounds.count, id: \.self){ sound in
                                SoundView(sound: self.sounds[sound])
                                    .padding(.top,10)
                                    //.padding(.bottom,10)
                                    .padding(.leading,14)
                                //.padding(.trailing,14)
                                
                                
                                
                                
                            }
                            
                        } .frame( width: geometry.size.width/2)
                        
                    }
                    
                    
                    
                    ScrollView(showsIndicators: false){
                        VStack{
                            
                            ForEach(0..<self.sounds.count/2, id: \.self){ sound in
                                
                                
                                SoundView(sound: self.sounds[sound])
                                    .padding(.top,10)
                                    //.padding(.leading,14)
                                    .padding(.trailing,14)
                                
                                
                                
                                
                                
                                
                            } .listRowInsets(EdgeInsets())
                            
                            
                            
                        }.frame( width: geometry.size.width/2)
                        
                    }
                }                
                
            }
                
                
                
            .navigationBarTitle(Text(self.grupo), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                stopSound()
            }){
                HStack{
                    //Text("Detener")
                    //  .foregroundColor(.black)
                    Image(systemName: "pause.circle")
                        .font(.title)
                }
                
            })
            
            
            
            
        }
    }
}

struct SoundsView_Previews: PreviewProvider {
    
    static var previews: some View {
        SoundsView(sounds: SoundManager().soundDictionary["Nel es Harina"]!, grupo: "Nel es Harina")
    }
}
