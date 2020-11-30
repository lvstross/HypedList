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
    var imageData: Data?
}
