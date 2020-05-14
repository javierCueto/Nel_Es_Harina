//
//  SoundView.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 13/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct SoundView: View {
    var sound: Sound
    var body: some View {
        
        Button(action: {
     
            
            playSound(toPlay: self.sound.nameAudio)
        }) {
            VStack(){
                Text(sound.name)
                    .font(.body)
                    .foregroundColor(.white)
                    //.fixedSize(horizontal: false, vertical: true)
                    .lineLimit(nil)
                  
               // Spacer()
                //Image(systemName: "play.circle")
                  //  .font(Font.title.weight(.medium))
                //.foregroundColor(.white)
           
            }
            
        }
        .padding(.leading,5)
        .padding(.trailing,5)
            .frame(maxWidth: .infinity, minHeight: 60 ,maxHeight: 60)
        .background(LinearGradient(gradient: Gradient(colors: sound.favorite ? [Color("Color01"),Color("Color03")] : [Color("Color01"),Color("Color02")]  ), startPoint: .leading, endPoint: .trailing))
        //.clipShape(Capsule())
        .cornerRadius(10)
        .shadow(color: Color("ColorShadow"), radius: 3, x: 0, y: 1)
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView(sound: SoundManager().sounds[9])
            .previewLayout(.fixed(width: 200, height: 300))
        //.previewLayout(.sizeThatFits)
        
        
    }
}
