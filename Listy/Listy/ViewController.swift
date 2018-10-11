//
//  ViewController.swift
//  Listy
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    var motion: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motion = CMMotionManager()
        motion.startAccelerometerUpdates(to: .main, withHandler: printData)
    }
    
    func printData(data: CMAccelerometerData?, error: Error?){
        guard let accelerometerData = data else {return}
        print(accelerometerData)
    }
}

