//
//  CharacterList.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal){
                    HStack(spacing: 20) {
                        ForEach(1 ..< 5){(item) in
                            Image("\(item)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200)
                                .clipped()
                        }
                    }
                }
                ForEach(characters.indices){(item) in
                    NavigationLink(destination: CharacterDetail(character: characters[item])){
                        CharacterRow(character: characters[item])
                    }
                }
                .listRowInsets(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 30))
            }
            .navigationBarTitle("吉吉吉")
        }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}
