//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    //var leftDiceNumber = 1 //normal sayicak
    //var rightDiceNumber = 5 //geriden sayicak
    
   /* override func viewDidLoad() {
        super.viewDidLoad()
        
        //neyi.neye=donusturdun
        //ilk zari.fotoya = 6 li zara cevirirdik
        //who.what=value
        //diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
       // diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
    }*/

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //let means is constant yani asagida degistirmek istesek arrayin icii=ni izin vermez
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //we make this array like this [1] which item we want[leftDicenuMBER] BUTTONA BASTIKCA BIZE DEGISMESI ICIN YARDIMCI OLUCAK.
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
        //leftDiceNum arttiriyotuz boylece array icini gezmis oluyoruz.
        //leftDiceNumber += 1
        
        //tersten gittigimiz icin her seferinde bir bir eksilterek gidiyoruz 5. basamak 4. basamak diye diye
        //rightDiceNumber -= 1
        
        //random sayilar yazdiriyoruz 1 ve 10 arasi
        //print(Int.random(in: 1...10))
        
        
    }
    
}

