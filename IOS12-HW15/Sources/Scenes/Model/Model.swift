//
//  Model.swift
//  IOS12-HW15
//
//  Created by Kaiten Aiko on 01.04.2024.
//

import UIKit

final class Model {
    
    var name: String
    var image: UIImage?
    var color: UIColor?
    
    init(name: String, image: UIImage?, color: UIColor?) {
        self.name = name
        self.image = image
        self.color = color
    }
}
