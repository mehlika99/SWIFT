//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Mely on 21.11.2021.
//


//created for networking and fetching the data from url
import Foundation


//ObservableObject bunun anlami it can actually stary to boardcast
class NetworkManager:ObservableObject{
    
    //Published used for published our post any interested part
    @Published var posts=[Post]()
    
    func fetchData(){
        if let url = URL(string:"http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ (data,response,error) in
                //if we dont have any errors so we did get some data back
                if error == nil{
                    //decode the data from the data from the network session
                    let decoder = JSONDecoder()
                    if let safeData=data{
                        do{
                            //data has been decoded here and we can use the results populate the our list
                    let results=try decoder.decode(Results.self,from:safeData)
                            //dispatch yapmamizin sebebi yukardaki @pusblished kismindan dlayi
                            DispatchQueue.main.async {
                                //we save the data we got from the url into posts array we have
                                self.posts=results.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                }
            }
                
            }
            task.resume()//start networking task
        }
    }

}
