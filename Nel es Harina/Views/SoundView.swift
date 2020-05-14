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
            print("here")
        }) {
            HStack(){
                Text(sound.name)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                  
                Spacer()
                Image(systemName: "play.circle")
                    .font(Font.title.weight(.medium))
                .foregroundColor(.white)
           
            }.padding()
            
        }
        //.padding()
        .frame(maxWidth: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color("Color01"),Color("Color02")]), startPoint: .leading, endPoint: .trailing))
        .clipShape(Capsule())
        .shadow(color: Color("ColorShadow"), radius: 3, x: 0, y: 1)
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView(sound: SoundManager().sounds[0])
            //.previewLayout(.sizeThatFits)
        
    }
}
