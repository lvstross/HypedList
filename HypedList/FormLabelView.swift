//
//  FormLabelView.swift
//  HypedList
//
//  Created by Levi Gonzales on 12/6/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import SwiftUI

struct FormLabelView: View {
    var title: String
    var iconSystemName: String
    var color: Color
    
    var body: some View {
        Label {
            Text(title)
        } icon: {
            Image(systemName: iconSystemName)
                .padding(4)
                .background(color)
                .cornerRadius(7)
                .foregroundColor(.white)
        }
    }
}

struct FormLabelView_Previews: PreviewProvider {
    static var previews: some View {
        FormLabelView(title: "Title", iconSystemName: "keyboard", color: Color.blue)
    }
}
