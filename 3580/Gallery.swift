//
//  Gallery.swift
//  3580
//
//  Created by Samara Mcphail on 24/08/2022.
//
import PhotosUI
import SwiftUI


struct Gallery: View {
    @State private var showContentView = false
    
    
    @State private var isPresented: Bool = false
    @State var pickerResult: [UIImage] = []
    var config: PHPickerConfiguration  {
        var config = PHPickerConfiguration(photoLibrary: PHPhotoLibrary.shared())
        config.filter = .images //videos, livePhotos...
        config.selectionLimit = 0 //0 => any, set 1-2-3 for hard limit
        return config
    }
    
    
    
    
    
    var body: some View {
        
        ZStack{
            Image("BackGround")
            
            VStack{
                Image("GALLERY")
            
                Button("add photo +") {
                    isPresented.toggle()
                }.sheet(isPresented: $isPresented) {
                    PhotoPicker(configuration: self.config,
                                pickerResult: $pickerResult,
                                isPresented: $isPresented)
            }
        }
    }
}
    
    struct PhotoPicker: UIViewControllerRepresentable {
        let configuration: PHPickerConfiguration
        @Binding var pickerResult: [UIImage]
        @Binding var isPresented: Bool
        func makeUIViewController(context: Context) -> PHPickerViewController {
            let controller = PHPickerViewController(configuration: configuration)
            //        controller.delegate yet to implemnt
            return controller
        }
        func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) { }
        func makeCoordinator() -> Coordinator {
            //to Do
        }
    }
    
}

struct Gallery_Previews: PreviewProvider {
    static var previews: some View {
        Gallery()
    }
}
