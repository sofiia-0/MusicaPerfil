//
//  ViewController.swift
//  MusicaPerfil
//
//  Created by User-UAM on 8/14/24.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var imagepfp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagepfp.layer.cornerRadius = imagepfp.frame.size.width/2
        imagepfp.clipsToBounds = true
    }


}

