//
//  FloatingActionButton.swift
//  BotonesFlotantes
//
//  Created by usuario on 10/04/19.
//  Copyright © 2019 ennovasoft. All rights reserved.
//

import UIKit

class FloatingActionButton: UIButtonX {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        UIView.animate(withDuration: 0.3) {
            
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 45 * (.pi/180))
                self.backgroundColor = UIColor(red: 41.0/255.0, green: 115.0/255.0, blue: 85.0/255.0, alpha: 1.0)
                self.setImage(UIImage(named: "cerrar"), for: .normal)
            }else{
                self.transform = .identity
                  self.backgroundColor = UIColor(red: 0.0/255.0, green: 87.0/255.0, blue: 75.0/255.0, alpha: 1.0)
                self.setImage(UIImage(named: "scan"), for: .normal)
            }
            
        }
        return super.beginTracking(touch, with: event)
    }
    

    
}
