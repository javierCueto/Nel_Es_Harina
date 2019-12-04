//
//  MoreSoundsController.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 02/12/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import UIKit

class MoreSoundsController: UIViewController {
    var sound = Sounds()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func buttonPlaySound(_ sender: UIButton) {
        let index = sender.tag
        print(index);
        sound.playSound(toPlay: index)
    }
    
}
