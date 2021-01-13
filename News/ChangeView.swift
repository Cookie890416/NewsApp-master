

import SwiftUI

struct ChangeView: View {
    var body: some View {
        
            TabView {
                SelectNewsView()
                    .tabItem {
                        Image(systemName: "tv")
                        Text("新聞隨意看")
                }
                CharacterList()
                    .tabItem{
                        Image(systemName: "person.2.fill")
                        Text("角色")
                }
                OtherFunction()
                    .tabItem {
                        Image(systemName: "photo")
                        Text(NSLocalizedString("picSelect", comment: ""))
                }
            }
        }
    }

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeView()
    }
}
