//
//  SpecialistCollectionViewCell.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class SpecialistCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var view: UIView!
    static let ID = String(describing: SpecialistCollectionViewCell.self)
    // MARK:  @IBOutlet
    @IBOutlet weak var doctorNumber: UILabel!
    @IBOutlet weak var SpecialistName: UILabel!
    @IBOutlet weak var SpecialistImage: UIImageView!
    
    
    // MARK:  Set up method
    func setup(_ Specialist : SpecialistModel) {
        view.backgroundColor = Specialist.viewColor
        doctorNumber.text = String(Specialist.count)
        SpecialistName.text = Specialist.name
        SpecialistImage.image = Specialist.image
        
        
    }

}
