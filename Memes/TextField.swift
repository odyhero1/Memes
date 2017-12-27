//
//  TextField.swift
//  Memes
//
//  Created by Odysseas Herodotou on 27/12/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit

class TextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: shadow_gray, green: shadow_gray, blue: shadow_gray, alpha: 0.5).cgColor
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: shadow_gray, green: shadow_gray, blue: shadow_gray, alpha: 0.5).cgColor
        layer.cornerRadius = 10.0

    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
         return bounds.insetBy(dx: 10, dy: 5)
    }
}
