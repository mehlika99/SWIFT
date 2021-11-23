//
//  PostData.swift
//  H4X0R
//
//  Created by Mely on 21.11.2021.
//


import Foundation

//hits in our response json code
struct Results: Decodable{
    //array of post objects
    let hits:[Post]
}
//json codedaki basliklari tek tek yaziyor ihtiyacimiz olanlari
//identifiable lazim because how to list items with order in the posts array
struct Post: Decodable,Identifiable{
    var id:String {
        return objectID
    }
    let objectID:String
    let points:Int
    let title:String
    let url:String?//? amaci bazen bos olabilir url kismi diyoruz
}
