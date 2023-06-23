//
//  gamePage3.swift
//  kidsGAme
//
//  Created by R87 on 23/06/23.
//

import UIKit
import AVFoundation

class gamePage3: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let a = AVSpeechSynthesizer()
    @IBOutlet weak var cv: UICollectionView!
    var alphaBetImage = [11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return alphaBetImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
        cell.layer.cornerRadius = 11
        cell.layer.masksToBounds = true
        cell.layer.borderColor = UIColor.systemBlue.cgColor
        cell.layer.borderWidth = 3
        cell.imgvieqw1.image = UIImage(named: alphaBetImage[indexPath.row].description)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            var mySound = AVSpeechUtterance(string: "a")
            a.speak(mySound)
            mySound.rate = 0.3
        }
       else if indexPath.row == 1{
           var mySound = AVSpeechUtterance(string: "b")
           a.speak(mySound)
           mySound.rate = 0.3
        }
        else if indexPath.row == 2{
            var mySound = AVSpeechUtterance(string: "c")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 3{
            var mySound = AVSpeechUtterance(string: "d")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 4{
            var mySound = AVSpeechUtterance(string: "e")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 5{
            var mySound = AVSpeechUtterance(string: "f")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 6{
            var mySound = AVSpeechUtterance(string: "g")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 7{
            var mySound = AVSpeechUtterance(string: "h")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 8{
            var mySound = AVSpeechUtterance(string: "i")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 9{
            var mySound = AVSpeechUtterance(string: "j")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 10{
            var mySound = AVSpeechUtterance(string: "k")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 11{
            var mySound = AVSpeechUtterance(string: "l")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 12{
            var mySound = AVSpeechUtterance(string: "m")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 13{
            var mySound = AVSpeechUtterance(string: "n")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 14{
            var mySound = AVSpeechUtterance(string: "o")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 15{
            var mySound = AVSpeechUtterance(string: "p")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 16{
            var mySound = AVSpeechUtterance(string: "q")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 17{
            var mySound = AVSpeechUtterance(string: "r")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 18{
            var mySound = AVSpeechUtterance(string: "s")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 19{
            var mySound = AVSpeechUtterance(string: "t")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 20{
            var mySound = AVSpeechUtterance(string: "u")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 21{
            var mySound = AVSpeechUtterance(string: "v")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 22{
            var mySound = AVSpeechUtterance(string: "w")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 23{
            var mySound = AVSpeechUtterance(string: "x")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 24{
            var mySound = AVSpeechUtterance(string: "y")
            a.speak(mySound)
            mySound.rate = 0.3
         }
        else if indexPath.row == 25{
            var mySound = AVSpeechUtterance(string: "z")
            a.speak(mySound)
            mySound.rate = 0.3
         }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 295, height: 172)
    }
    

    @IBAction func backButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(identifier: "gamePage1") as! gamePage1
        navigationController?.popViewController(animated: true)
    }
}
