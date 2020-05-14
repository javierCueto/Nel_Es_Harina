//
//  GroupSoundView.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 13/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct GroupView: View {
    var grupo: String
    var body: some View {
        
        
        

        VStack{
            Text(grupo)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }.padding()
            .frame(maxWidth: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color("Color01"),Color("Color02")]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            .shadow(color: Color("ColorShadow"), radius: 3, x: 0, y: 1)
        
        
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView(grupo: "Musica")
            .previewLayout(.sizeThatFits)
    }
}
