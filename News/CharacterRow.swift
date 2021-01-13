//
//  CharacterRow.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    let character: Character
    var body: some View {
        HStack {
            Image(character.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 5)
            VStack(alignment: .leading){
                Text(character.name).font(Font.custom("jf-openhuninn-1.0", size: 22))
                Text(character.ename)
            }
            Spacer()
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: .demoCharacter)
        .previewLayout(.sizeThatFits)
    }
}
