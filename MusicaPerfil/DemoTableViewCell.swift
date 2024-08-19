//
//  DemoTableViewCell.swift
//  MusicaPerfil
//
//  Created by User-UAM on 8/17/24.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    //Outlets
    
    @IBOutlet weak var imageCancion: UIImageView!
    @IBOutlet weak var labelListeningTo: UILabel!
    @IBOutlet weak var artistaCancion: UILabel!
    @IBOutlet weak var anioCancion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        redondearImagen()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Configuración de la celda
    func configureCell(image: UIImage, listeningTo: String, artist: String, year: String){
        self.imageCancion.image = image
        self.labelListeningTo.text = listeningTo
        self.artistaCancion.text = artist
        self.anioCancion.text = year
    }
    
    private func redondearImagen(){
        imageCancion.layer.cornerRadius = imageCancion.frame.size.width / 2
        imageCancion.clipsToBounds = true
    }
}
