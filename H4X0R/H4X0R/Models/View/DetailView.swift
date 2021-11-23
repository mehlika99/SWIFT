//
//  DetailView.swift
//  H4X0R
//
//  Created by Mely on 22.11.2021.
//

//bunu olusturmamaizin sebebi user bir dataya basdiginda onun detailslarna goturmesini saglamak icin
//it makes cell clickale
import SwiftUI


//1|)when the view loads up
struct DetailView: View {
    //2)it get passsed the url string
    let url:String?
    
    var body: some View {
        //3)url will get use for cretin webview
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}
