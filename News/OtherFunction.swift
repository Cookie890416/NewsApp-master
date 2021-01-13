//
//  OtherFunction.swift
//  News
//
//  Created by User10 on 2021/1/4.
//  Copyright © 2021 ntouyujen. All rights reserved.
//


import SwiftUI

struct OtherFunction: View {
    @State private var scale:CGFloat = 1
    @State private var newScale:CGFloat = 1
    @State private var selectImage = Image(systemName: "photo")
    @State private var showSelectPhoto = false
    
    @State public var bdate = Date()
    
    private var todoItems = [ ToDoItem(name: "giwawa1"),
                              ToDoItem(name: "giwawa2"),
                              ToDoItem(name: "giwawa3"),
                              ToDoItem(name: "giwawa4"),
                              ToDoItem(name: "giwawa5")
                                ]
    
    @State private var searchText = ""
    var body: some View {
        NavigationView {
           
            VStack {
                Text("點選選擇圖片")
                Button(action: {
                    self.showSelectPhoto = true
                }) {
                    selectImage
                        .resizable()
                        .scaledToFill()
                        .frame(width:200, height:200)
                        .clipped()
                }
                .buttonStyle(PlainButtonStyle())
                .sheet(isPresented: $showSelectPhoto) {
                    ImagePickerController(selectImage: self.$selectImage, showSelectPhoto:
                        self.$showSelectPhoto)
                }
                .navigationBarTitle(NSLocalizedString("picture", comment: ""))
                HStack {
                        
                    Spacer()
                    
                    
                }
                .padding()
                
                SearchBar(text: $searchText)
                    .padding(.top, -30)
                
                List(todoItems.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
                    Text(item.name)
                }
                
                
            }
        }
    }
}

struct OtherFunction_Previews: PreviewProvider {
    static var previews: some View {
        OtherFunction()
    }
}

