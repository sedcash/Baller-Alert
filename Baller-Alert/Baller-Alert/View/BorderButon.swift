//
//  BorderButon.swift
//  Baller-Alert
//
//  Created by Sedrick Cashaw Jr on 12/20/17.
//  Copyright © 2017 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit

class BorderButon: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
