//
//  ViewController.swift
//  kidsGAme
//
//  Created by R87 on 21/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func playButton(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(identifier: "gamePage1") as! gamePage1
        navigationController?.pushViewController(nv, animated: true)
    }
}
