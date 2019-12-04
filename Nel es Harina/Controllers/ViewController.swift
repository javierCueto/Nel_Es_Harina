//
//  ViewController.swift
//  Nel es Harina
//
//  Created by José Javier Cueto Mejía on 9/27/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var sound = Sounds()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonSoundPressed(_ sender: UIButton) {
        let index = sender.tag
        sound.playSound(toPlay: index)
    }
    
    
}

