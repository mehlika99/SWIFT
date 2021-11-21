//
//  ContentView.swift
//  MehlikaCardApp
//
//  Created by Mely on 8.11.2021.
//

import SwiftUI

struct ContentView: View {
    var phoneNumber = "+48 696 365 917"
    var goMail = "hmbilgicli@icloud.com"
    var body: some View {
        ZStack{
            Color(.systemMint).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)//color beyonds the safe area
            VStack {
                Image("mehlika")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0 )
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)//it makes my photo cirlcle
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)//it makes white bordar for my photo
                    )
                Text("Mehlika Bilgicli")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Junior Software Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    Divider()//divider ekrani ikiye boluyo
                Button(action: {
                       let mail = "messages://"
                       let mailFormatted = mail + goMail
                       guard let url = URL(string: mailFormatted) else { return }
                       UIApplication.shared.open(url)
                      }) {
                       Text(goMail)
                              .padding()
                              .foregroundColor(.blue)
                              .background(.white)
                              .clipShape(Capsule())
                              .cornerRadius(25)
                          Image(systemName: "envelope.fill")
                                 .background(.white)
                                 .foregroundColor(.green)
                   }
                
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + phoneNumber
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                   }) {
                    Text(phoneNumber)
                           .padding()
                           .foregroundColor(.blue)
                           .background(.white)
                           .clipShape(Capsule())
                           .cornerRadius(25)
                           
                    Image(systemName: "phone.fill")
                           .background(.white)
                           .foregroundColor(.green)
                
                }

                Link(destination: URL(string: "https://www.linkedin.com/in/mehlika-bilgi%C3%A7li-1b1317187/")!) {
                    Image("linkedin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0 )
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)//it makes my photo cirlcle
                    
                Link(destination: URL(string: "https://github.com/mehlika99")!) {
                    Image("github")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0 )
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)//it makes my photo cirlcle
                        
                            
                    }
                        
                }
             

                
                
//                InfoView(text: "+48 696 365 917", imageName: "phone.fill")
//                InfoView(text: "hmbilgicli@icloud.com", imageName: "envelope.fill")
//                InfoView(text: "CV",imageName: "filemenu.and.selection")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//yapmak istedigin yere gel command+click yap exrtact subview de bu sekilde fonskyon gibi yaziyor
// InfoView: View {
//    let text:String
//    let imageName:String
//    
//    var body: some View {
//        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.white)
//            .frame(height: 50)
//            .foregroundColor(.white)
//            .overlay(HStack {
//                Image(systemName:
//                        imageName)
//                    .foregroundColor(.green)
//                Text(text)
//            })
//            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//    }
//}
