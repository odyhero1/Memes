//
//  CircleView.swift
//  Memes
//
//  Created by Odysseas Herodotou on 30/12/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        layer.shadowColor = UIColor(red: shadow_gray, green: shadow_gray, blue: shadow_gray, alpha: 0.5).cgColor
//        layer.shadowOpacity = 0.8
//        layer.shadowRadius = 5.0
//        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
//        //   imageView?.contentMode = .scaleAspectFit
//    }

    override func layoutSubviews() {

layer.cornerRadius = self.frame.width / 2
            
    }

}
