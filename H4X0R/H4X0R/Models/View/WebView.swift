//
//  WebView.swift
//  H4X0R
//
//  Created by Mely on 23.11.2021.
//

import Foundation
import SwiftUI
import WebKit

//satirimizin uzerine basinca onunla ilgili olan web sitesinin calismasini sagliyacak
struct WebView:UIViewRepresentable{
   
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString=urlString{
            if let url=URL(string:safeString){
                let request=URLRequest(url: url)
                //4)when it is cretaed we will updated by loading the url
                uiView.load(request)
            }
        }
    }
    
}
