//
//  gamePage2.swift
//  kidsGAme
//
//  Created by R87 on 22/06/23.
//

import UIKit
import AVFoundation

class gamePage2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cv1: UICollectionView!
    var alphabetImage = [1,2,3,4,5,6,7,8,9]

    let a = AVSpeechSynthesizer()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return alphabetImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 11
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.systemBlue.cgColor
        cell.imageViewForAlphabet.image = UIImage(named: alphabetImage[indexPath.row].description)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 295, height: 172)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            var mySound = AVSpeechUtterance(string: "1")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 1{
            var mySound = AVSpeechUtterance(string: "2")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 2{
            var mySound = AVSpeechUtterance(string: "3")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 3{
            var mySound = AVSpeechUtterance(string: "4")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 4{
            var mySound = AVSpeechUtterance(string: "5")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 5{
            var mySound = AVSpeechUtterance(string: "6")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 6{
            var mySound = AVSpeechUtterance(string: "7")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 7{
            var mySound = AVSpeechUtterance(string: "8")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 8{
            var mySound = AVSpeechUtterance(string: "9")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        
    }
    
    
    


    @IBAction func backButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(identifier: "gamePage1") as! gamePage1
        navigationController?.popViewController(animated: true)
    }
}
