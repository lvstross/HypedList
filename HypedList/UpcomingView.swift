//
//  UpcomingView.swift
//  HypedList
//
//  Created by Levi Gonzales on 11/28/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import SwiftUI

struct UpcomingView: View {
    
    @State var isCreateViewOpen = false
    
    var body: some View {
        Text("Upcoming")
            .navigationBarTitle("Upcoming")
            .navigationBarItems(trailing:
                Button(action: {
                    self.isCreateViewOpen = true
                }) {
                    Image(systemName: "calendar.badge.plus")
                        .font(.title)
                }
                .sheet(isPresented: $isCreateViewOpen) {
                    CreateHypedEventView()
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
