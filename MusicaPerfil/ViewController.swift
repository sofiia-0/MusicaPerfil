//
//  ViewController.swift
//  MusicaPerfil
//
//  Created by User-UAM on 8/14/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Variables
    var likesCount: Int = 5531
    var songs: [(image: UIImage, listeningTo: String, artist: String, year: String)] = []

    //Outlet
    @IBOutlet weak var imagepfp: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagepfp.layer.cornerRadius = imagepfp.frame.size.width/2
        imagepfp.clipsToBounds = true
        likeButton.setTitle("\(likesCount)", for: .normal)
        
        tableView.register(UINib(nibName: "DemoTableViewCell", bundle: nil),forCellReuseIdentifier: "DemoTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    
        //Config. de las canciones
        setupSongs()
    }
    
    func setupSongs(){
        //Datos
        if let firstImage = UIImage(named: "first"), let secondImage = UIImage(named: "second"), let thirdImage = UIImage(named: "third") {
            songs.append((image: firstImage, listeningTo: "Listening to Green Grass of Tunnel", artist: "Múm - Finally We Are No One", year: "2022"))
            songs.append((image: secondImage, listeningTo: "Listening to Count your blessings", artist: "Johnson Oatman - Evenings", year: "2012"))
            songs.append((image: thirdImage, listeningTo: "Listening to Daydream", artist: "Chris Lock - Fir Sure", year: "2009"))

            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell") as! DemoTableViewCell
        
        let song = songs[indexPath.row]
        cell.configureCell(image: song.image, listeningTo: song.listeningTo, artist: song.artist, year: song.year)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    @IBAction func likeUp(_ sender: Any) {
        likesCount += 1
        likeButton.setTitle("\(likesCount)", for: .normal)
        
    }
    
}

