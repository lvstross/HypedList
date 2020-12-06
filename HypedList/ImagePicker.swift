//
//  ImagePicker.swift
//  HypedList
//
//  Created by Levi Gonzales on 12/6/20.
//  Copyright © 2020 Levi Gonzales. All rights reserved.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var imageData: Data?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.imageData = image.pngData()
            }
            
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
