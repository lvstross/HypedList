//
//  UpcomingView.swift
//  HypedList
//
//  Created by Levi Gonzales on 11/28/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import SwiftUI

struct UpcomingView: View {
    var body: some View {
        Text("Upcoming")
            .navigationBarTitle("Upcoming")
            .navigationBarItems(trailing:
                Button(action: {}) {
                    Image(systemName: "calendar.badge.plus")
                        .font(.title)
                }
            )
    }
}

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
             UpcomingView()
        }
    }
}
