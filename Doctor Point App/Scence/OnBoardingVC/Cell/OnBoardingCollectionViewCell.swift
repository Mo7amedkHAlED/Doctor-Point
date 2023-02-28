//
//  OnBoardingCollectionViewCell.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 26/02/2023.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    static let ID = String(describing: OnBoardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var slideTitle: UILabel!
    @IBOutlet weak var slideDesc: UILabel!
    
    // MARK:  SeT up Cell
    func setup(with slide:SLide){
        self.slideImg.image = UIImage(named: slide.slideImg!)
        self.slideTitle.text = slide.slideTitle
        self.slideDesc.text = slide.slideDesc
        
    }
}
