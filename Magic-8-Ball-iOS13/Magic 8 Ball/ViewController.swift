//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var iamgeView: UIImageView!
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        //arrayin icindeki phototlari ask butonuna bastikca rabdom sekilde alicaz. mesela icine sade [3] yazsaydim sadece 3. cu phototyu gorecektik
        iamgeView.image = ballArray[Int.random(in: 0...4)]
    }
    

}

