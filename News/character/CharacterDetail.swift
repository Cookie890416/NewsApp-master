//
//  CharacterDetail.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct CharacterDetail: View {
    
    let character: Character
    
    var body: some View {
        VStack {
            Image(character.name)
                .resizable()
                .scaledToFill()
                .frame(height: 370.0)
                .clipped()
            Text(character.intro)
                .multilineTextAlignment(.center)
                .font(Font.custom("jf-openhuninn-1.0", size: 21))
            .padding()
            Spacer()
        }
        .navigationBarTitle(character.name)
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: characters[0])
    }
}
