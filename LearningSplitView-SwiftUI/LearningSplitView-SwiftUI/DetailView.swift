//
//  DetailView.swift
//  LearningSplitView-SwiftUI
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var memoji: MeMoji
    
    var body: some View {
        memoji.image
            .scaleEffect(0.5)
            .navigationBarTitle(
                Text(memoji.name),
                displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(memoji: memoji[0])
    }
}
