//
//  ViewController.swift
//  MusicaPerfil
//
//  Created by User-UAM on 8/14/24.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    var likesCount: Int = 5531

    //Outlet
    @IBOutlet weak var imagepfp: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagepfp.layer.cornerRadius = imagepfp.frame.size.width/2
        imagepfp.clipsToBounds = true
        likeButton.setTitle("\(likesCount)", for: .normal)
    }
    
    @IBAction func likeUp(_ sender: Any) {
        likesCount += 1
        likeButton.setTitle("\(likesCount)", for: .normal)
        
    }
    
}

