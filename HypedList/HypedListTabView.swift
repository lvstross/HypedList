//
//  HypedListTabView.swift
//  HypedList
//
//  Created by Levi Gonzales on 11/28/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import SwiftUI

struct HypedListTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                 UpcomingView()
            }
                .tabItem {
                    Image(systemName: "calendar")
                        .font(.title)
                    Text("Upcoming")
                }
            Text("Discover")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                    Text("Discover")
            }
            Text("Past")
                .tabItem {
                    Image(systemName: "gobackward")
                        .font(.title)
                    Text("Past")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HypedListTabView().previewDevice("iPhone 11")
    }
}
