//
//  CreateHypedEventView.swift
//  HypedList
//
//  Created by Levi Gonzales on 11/30/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import SwiftUI

struct CreateHypedEventView: View {
    
    @StateObject var hypedEvent = HypedEvent()
    
    var body: some View {
        Text("Create Hyped Event")
    }
}

struct CreateHypedEventView_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEventView()
    }
}
