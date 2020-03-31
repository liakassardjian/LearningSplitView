//
//  MeMoji.swift
//  LearningSplitView-SwiftUI
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import SwiftUI

struct MeMoji {    
    var name: String
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}

let memoji = [MeMoji(name: "Happy", imageName: "happy"),
              MeMoji(name: "Crying", imageName: "crying"),
              MeMoji(name: "Mind blowing", imageName: "mindBlowing"),
              MeMoji(name: "Disappointed", imageName: "disappointed"),
              MeMoji(name: "Silly", imageName: "silly"),
              MeMoji(name: "Developer", imageName: "developer"),
              MeMoji(name: "Sleepy", imageName: "sleepy"),
              MeMoji(name: "Party mood", imageName: "partyMood"),
              MeMoji(name: "Shocked", imageName: "shocked"),
              MeMoji(name: "Star", imageName: "star")]
