//
//  HypedEvent.swift
//  HypedList
//
//  Created by Levi Gonzales on 11/30/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import Foundation
import SwiftUI

class HypedEvent: ObservableObject {
    var date = Date()
    var title = ""
    var url = ""
    var color = Color.purple
    @Published var imageData: Data?
    
    func image() -> Image? {
        if let data = imageData {
            if let uiImage = UIImage(data: data) {
                return Image(uiImage: uiImage)
            }
        }
        return nil
    }
}
