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
    @State var showImagePicker = false
    
    var body: some View {
        Form {
            Section {
                FormLabelView(title: "Title", iconSystemName: "keyboard", color: .blue)
                TextField("Family Vacation", text: $hypedEvent.title)
                    .autocapitalization(.words)
            }
            Section {
                FormLabelView(title: "Date", iconSystemName: "calendar", color: .red)
                DatePicker(
                    "Date",
                    selection: $hypedEvent.date,
                    displayedComponents: showTime ? [.date, .hourAndMinute] : [.date]
                )
                    .datePickerStyle(GraphicalDatePickerStyle())
                Toggle(isOn: $showTime, label: {
                    FormLabelView(title: "Time", iconSystemName: "clock.fill", color: .blue)
                })
            }
            Section {
                ColorPicker(selection: $hypedEvent.color) {
                    FormLabelView(title: "Color", iconSystemName: "eyedropper", color: .purple)
                }
            }
            
            Section {
                if hypedEvent.image() == nil {
                    HStack {
                        FormLabelView(title: "Image", iconSystemName: "camera", color: .green)
                        Spacer()
                        Button(action: {
                            showImagePicker = true
                        }) {
                            Text("Pick Image")
                        }
                    }
                } else {
                    HStack {
                        FormLabelView(title: "Image", iconSystemName: "camera", color: .purple)
                        Spacer()
                        Button(action: {
                            hypedEvent.imageData = nil
                        }) {
                            Text("Remove Image")
                                .foregroundColor(.red)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                    }
                    Button(action: {
                        showImagePicker = true
                    }) {
                        hypedEvent.image()!
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(imageData: $hypedEvent.imageData)
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
