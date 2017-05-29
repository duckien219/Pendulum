//
//  ViewController.swift
//  pendulum
//
//  Created by Kien Nguyen Duc on 5/23/17.
//  Copyright © 2017 Kien Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imv_pendulum: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        animate()
        pendulum()
    }
    func animate() {
        UIView.animate(withDuration: 3, animations: {
            self.imv_pendulum.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
        }) {_ in
            UIView.animate(withDuration: 3, animations: {
                self.imv_pendulum.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 4)
            }) {_ in
                self.animate()
            }
        }
    }
    func pendulum() {
        imv_pendulum.layer.anchorPoint = CGPoint(x: 0.5, y: 0) // chọn tâm quay
    }
}

