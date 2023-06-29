//
//  gamePage2.swift
//  kidsGAme
//
//  Created by R87 on 22/06/23.
//

import UIKit
import AVFoundation

class gamePage2: UIViewController {
    
    var i = 0
    //@IBOutlet weak var cv1: UICollectionView!
    var alphabetImage = [1,2,3,4,5,6,7,8,9,10]
    var img = [51,52,53,54,55,56,57,58,59,60]

    @IBOutlet weak var imgviewForNumber: UIImageView!
    @IBOutlet weak var imgview2ForNumber: UIImageView!

    let a = AVSpeechSynthesizer()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return alphabetImage.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
//        cell.layer.cornerRadius = 11
//        cell.layer.masksToBounds = true
//        cell.layer.borderWidth = 3
//        cell.layer.borderColor = UIColor.systemBlue.cgColor
//        cell.imageViewForAlphabet.image = UIImage(named: alphabetImage[indexPath.row].description)
//        cell.img.image = UIImage(named: img[indexPath.row].description)
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 295, height: 172)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if indexPath.row == 0{
//            var mySound = AVSpeechUtterance(string: "1")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 1{
//            var mySound = AVSpeechUtterance(string: "2")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 2{
//            var mySound = AVSpeechUtterance(string: "3")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 3{
//            var mySound = AVSpeechUtterance(string: "4")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 4{
//            var mySound = AVSpeechUtterance(string: "5")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 5{
//            var mySound = AVSpeechUtterance(string: "6")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 6{
//            var mySound = AVSpeechUtterance(string: "7")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 7{
//            var mySound = AVSpeechUtterance(string: "8")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 8{
//            var mySound = AVSpeechUtterance(string: "9")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//        else if indexPath.row == 9{
//            var mySound = AVSpeechUtterance(string: "10")
//            a.speak(mySound)
//            mySound.rate = 0.3
//        }
//
//    }
    
    
    @IBAction func nextButtonAction(_ sender: Any) {
        i+=1
        if i == 10{
            i = 0
        }
        imgviewForNumber.image = UIImage(named: alphabetImage[i].description)
        imgview2ForNumber.image = UIImage(named: img[i].description)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        i-=1
        if i == -1{
            i = 9
        }
        imgviewForNumber.image = UIImage(named: alphabetImage[i].description)
        imgview2ForNumber.image = UIImage(named: img[i].description)
    }
    


    @IBAction func backButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(identifier: "gamePage1") as! gamePage1
        navigationController?.popViewController(animated: true)
    }
}
