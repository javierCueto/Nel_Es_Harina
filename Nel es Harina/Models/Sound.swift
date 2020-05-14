//
//  Sound.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 13/05/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct Sound:Hashable, Identifiable {
    var id: UUID
    var name: String
    var nameAudio: String
    var image: String?
    var classification: String
    var favorite: Bool
    
}
