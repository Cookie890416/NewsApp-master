//
//  ImagePickerController.swift
//  News
//
//  Created by User10 on 2021/1/4.
//  Copyright © 2021 ntouyujen. All rights reserved.
//


import SwiftUI

struct ImagePickerController: UIViewControllerRepresentable {
    
    @Binding var selectImage: Image
    @Binding var showSelectPhoto: Bool
    
    func makeCoordinator() -> ImagePickerController.Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        var imagePickerController: ImagePickerController
        
        init(_ imagePickerController: ImagePickerController) {
            self.imagePickerController = imagePickerController
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                imagePickerController.selectImage = Image(uiImage: uiImage)
            }
            imagePickerController.showSelectPhoto = false
        }
        
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerController>) -> UIImagePickerController {
        let controller = UIImagePickerController()
        controller.sourceType = .photoLibrary
        controller.delegate = context.coordinator
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePickerController>) {
    }
    
    
}
