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
    @State var showTime = false
    
    var body: some View {
        Form {
            Section {
                FormLabelView(title: "Title", iconSystemName: "keyboard", color: Color.blue)
                TextField("Family Vacation", text: $hypedEvent.title)
                    .autocapitalization(.words)
            }
            Section {
                FormLabelView(title: "Date", iconSystemName: "calendar", color: Color.red)
                DatePicker(
                    "Date",
                    selection: $hypedEvent.date,
                    displayedComponents: showTime ? [.date, .hourAndMinute] : [.date]
                )
                    .datePickerStyle(GraphicalDatePickerStyle())
                Toggle(isOn: $showTime, label: {
                    FormLabelView(title: "Time", iconSystemName: "clock.fill", color: Color.blue)
                })
            }
            Section {
                ColorPicker(selection: $hypedEvent.color) {
                    FormLabelView(title: "Color", iconSystemName: "eyedropper", color: Color.purple)
                }
            }
            Section {
                FormLabelView(title: "URL", iconSystemName: "link", color: Color.orange)
                TextField("nintendo.com", text: $hypedEvent.url)
                    .keyboardType(.URL)
                    .autocapitalization(.none)
            }
        }
    }
}

struct CreateHypedEventView_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEventView()
    }
}
