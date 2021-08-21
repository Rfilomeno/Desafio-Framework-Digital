//
//  ViewController.swift
//  Desafio Framework Digital
//
//  Created by Rodrigo Filomeno on 18/08/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var notFoundImageView: UIImageView!
    @IBOutlet weak var noFoundLabel: UILabel!
    @IBOutlet weak var highlightsTableView: UITableView!
    var productList: ProductList? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.highlightsTableView.delegate = self
        self.highlightsTableView.dataSource = self
        self.productList = HighlightsDAO.getHighlightProducts()
    }
    
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productList != nil ? self.productList!.count : 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = highlightsTableView.dequeueReusableCell(withIdentifier: "highlightcell", for: indexPath) as! HighlightTableViewCell
        guard let list = self.productList else { return cell }
        guard let name = list[indexPath.row].name else { return cell }
        guard let price = list[indexPath.row].price else { return cell }
        guard let img = list[indexPath.row].imgSource else { return cell }
        
        cell.productNameLabel.text = name
        cell.productPriceLabel.text = String(price)
        cell.productImageView.image.
        
    }

}

