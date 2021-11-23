//
//  ContentView.swift
//  H4X0R
//
//  Created by Mely on 21.11.2021.
//

import SwiftUI

struct ContentView: View {
    //listening
    @ObservedObject var networkManager=NetworkManager()
    var body: some View {
        //alt alta yazilsin diye list yaptik yapmasaydik iki ayra ekranda cikicakti
        NavigationView{
            List(networkManager.posts){ post in
                //bir satira basinca details vieve gitmesini sagliyacak
                NavigationLink(destination: DetailView(url:post.url)){
                    
                }
                //bu bize post arrayin icindeki yazdigimiz seylere ulasmamizi sagladi.
                HStack {
                    //we are goin to show number of points
                    Text(String(post.points))
                    Text(post.title)
                }
                
            }
            .navigationBarTitle("HOT NEWS")
            
        }
        .onAppear {
            //as soon as appear
            //trigger the fetchdata here
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
//
////ARRAY OF POSTS
//let post=[
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Merhaba"),
//    Post(id: "3", title: "Bonjour"),
//    Post(id: "4", title: "Cześć")
//]
