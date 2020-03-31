//
//  MeMoji.swift
//  LearningSplitView-SwiftUI
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import SwiftUI

class MeMoji {
    var name: String
    var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
    
    var image: Image {
        Image(imageName)
    }
}
