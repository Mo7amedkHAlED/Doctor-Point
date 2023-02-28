//
//  DoctorsCollectionViewCell.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class DoctorsCollectionViewCell: UICollectionViewCell {
    static let ID = String(describing: DoctorsCollectionViewCell.self)
    // MARK:  @IBOutlet
    @IBOutlet weak var doctorName: UILabel!
    @IBOutlet weak var doctorSpeciality: UILabel!
    @IBOutlet weak var doctorImage: UIImageView!
    // MARK:  set up method
    func setUp(_ doctor: DoctorModel) {
        doctorName.text = doctor.name
        doctorImage.image = doctor.image
        doctorSpeciality.text = doctor.speciality
        
    }
    

}
