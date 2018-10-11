//
//  ParallaxCell.swift
//  Listy
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        activateParallax()
    }
    
    func configureCell(withCellImage cellImage: String, andCellLabel cellLabel: String) {
        self.cellImage.image = UIImage(named: cellImage)
        self.cellLabel.text = cellLabel
    }
    
    func activateParallax(){
        let max = CGFloat(25)
        let min = CGFloat(-25)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.maximumRelativeValue = max
        xMotion.minimumRelativeValue = min
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = max
        yMotion.minimumRelativeValue = min
        
        let motionGroup = UIMotionEffectGroup()
        motionGroup.motionEffects = [xMotion, yMotion]
        
        cellImage.addMotionEffect(motionGroup)
    }
}
