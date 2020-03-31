//
//  ListView.swift
//  LearningSplitView-SwiftUI
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ForEach(memoji, id: \.name) { item in
                NavigationLink(destination: DetailView(memoji: item)) {
                    Text(item.name)
                }
            }
        }.navigationBarTitle("MeMoji")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
