//
//  MeMoji.swift
//  LearningUISplitView
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import UIKit

class MeMoji {
    var name: String
    var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
    
    var image: UIImage? {
        return UIImage(named: imageName)
    }
}
