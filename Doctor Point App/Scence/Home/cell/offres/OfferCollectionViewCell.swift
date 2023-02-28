//
//  issuesCollectionViewCell.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class OfferCollectionViewCell: UICollectionViewCell {
    static let ID = String(describing: OfferCollectionViewCell.self)
    
    // MARK:  @IBOutlet
    @IBOutlet weak var offerNameLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    // MARK:  Set up method
    func setUp(_ offers: OffersModel) {
        offerNameLabel.text = offers.title
        DescriptionLabel.text = offers.description
        priceLabel.text = offers.price
        
    }
    
}
