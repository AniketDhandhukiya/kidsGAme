//
//  gamePage4.swift
//  kidsGAme
//
//  Created by R87 on 24/06/23.
//

import UIKit
import AVFoundation

class gamePage4: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    var a = AVSpeechSynthesizer()
    @IBOutlet weak var cv: UICollectionView!
    var fruitLabel = ["Apple","Cucumber","Orange","Cranberry"]
    var fruitImage = [101,102,103,104]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell4
        cell.layer.cornerRadius = 11
        cell.layer.masksToBounds = true
        cell.layer.borderColor = UIColor.systemBlue.cgColor
        cell.layer.borderWidth = 3
        cell.imgview.image = UIImage(named: fruitImage[indexPath.row].description)
        cell.fruitLabel.text = fruitLabel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            var mySound = AVSpeechUtterance(string: "apple")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 1{
            var mySound = AVSpeechUtterance(string: "cucumber")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 2{
            var mySound = AVSpeechUtterance(string: "orange")
            a.speak(mySound)
            mySound.rate = 0.3
        }
        else if indexPath.row == 3{
            var mySound = AVSpeechSynthesisVoice(language: "Gujarati")
            a.speak(mySound)
            mySound.rate = 0.3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 318, height: 172)
    }
    
    @IBAction func backButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(identifier: "gamePage1") as! gamePage1
        navigationController?.popViewController(animated: true)
    }
    

}
