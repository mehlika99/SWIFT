//
//  InfoView.swift
//  MehlikaCardApp
//
//  Created by Mely on 20.11.2021.
//

//bunu yapmamizin sebebi ise contentviewde bunu kullaniyoruz ve kod karmasaligini onlesin diye buraya yazdik hepsini
import SwiftUI

struct InfoView: View {
    let text:String
    let imageName:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName:
                        imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
