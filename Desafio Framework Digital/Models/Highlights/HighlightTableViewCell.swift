//
//  HighlightTableViewCell.swift
//  Desafio Framework Digital
//
//  Created by Rodrigo Filomeno on 20/08/21.
//

import UIKit
import Alamofire
import AlamofireImage

class HighlightTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setProductImage(path: String){
        _ = AF.request(path).responseImage { (response) in
            if case .success(let image) = response.result {
                self.productImageView.image = image
                }
        }
    }

}
