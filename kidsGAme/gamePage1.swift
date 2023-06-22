//
//  ViewController.swift
//  kidsGAme
//
//  Created by R87 on 21/06/23.
//

import UIKit

class gamePage1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alphabetsAction(_ sender: Any) {
        
    }
    
    @IBAction func NumbersAction(_ sender: Any) {
        let nv = storyboard?.instantiateViewController(identifier: "gamePage2") as! gamePage2
        navigationController?.pushViewController(nv, animated: true)
    }
}

