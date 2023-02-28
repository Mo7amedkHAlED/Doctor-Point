//
//  HomeVC.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class HomeVC: UIViewController {
    static let ID = String(describing: HomeVC.self)
    // MARK:  @IBOutlet
    @IBOutlet weak var SpecialistCollectionView: UICollectionView!
    @IBOutlet weak var OfferCollectionView: UICollectionView!
    @IBOutlet weak var DoctorsCollectionView: UICollectionView!
    // MARK:  Vars
    var offersData: [OffersModel]?
    var doctorsData: [DoctorModel]?
    var SpecialistData: [SpecialistModel]?
    // MARK:  Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        getData ()
        registerCellNIB()
        
    }
    // MARK:  Register Cell NIB
    func registerCellNIB() {
        setupCollectioViewCell(for: SpecialistCollectionView, name: SpecialistCollectionViewCell.ID)
        setupCollectioViewCell(for: OfferCollectionView, name: OfferCollectionViewCell.ID)
        setupCollectioViewCell(for: DoctorsCollectionView, name: DoctorsCollectionViewCell.ID)
    }
    // MARK: - Load Data
    func getData () {
        SpecialistData = [
        SpecialistModel(name: "Cardio Specialist", count: 27, image: #imageLiteral(resourceName: "lungIcon"),viewColor: #colorLiteral(red: 0, green: 0.659090817, blue: 0.5707553029, alpha: 1)),
        SpecialistModel(name: "Heart Issue"      , count: 43, image: #imageLiteral(resourceName: "heartIcon"),viewColor: #colorLiteral(red: 0.3333333333, green: 0.3294117647, blue: 0.8588235294, alpha: 1)),
        SpecialistModel(name: "Dental Care"      , count: 19, image: #imageLiteral(resourceName: "teathIcon"),viewColor: #colorLiteral(red: 1, green: 0.6588235294, blue: 0.4509803922, alpha: 1)),
        SpecialistModel(name: "Physico Therapy"  , count: 07, image: #imageLiteral(resourceName: "wheelIcon"),viewColor: #colorLiteral(red: 0.6274509804, green: 0.4745098039, blue: 0.9254901961, alpha: 1))
        ]
        
         offersData = [
            OffersModel(title: "Cardio Issues?", description: "For cardio patient here can easily contact with doctor. Can chat & live chat.", price: "100"),
            OffersModel(title: "Dental Treatments", description: "For Dental patient here can easily contact with doctor. Can chat & live chat.", price: "150")]
        
        doctorsData = [
            DoctorModel(name: "Mahmud N", image: #imageLiteral(resourceName: "dr01"), speciality: "Heart Sergon"),
            DoctorModel(name: "Daniela M", image: #imageLiteral(resourceName: "dr02"), speciality: "Cardio Sergon"),
            DoctorModel(name: "Carmen H", image: #imageLiteral(resourceName: "dr03"), speciality: "Dental")]
    }
    
    // MARK: setup data
    func setupCollectioViewCell(for collectionView:UICollectionView,name : String){
        
        let nib = UINib(nibName: name, bundle: nil)
        
        collectionView.register(nib, forCellWithReuseIdentifier: name)
    }
}
// MARK: -  extension to implement CollectionVIew Delegate & FlowLayout & DataSource
extension HomeVC : UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case SpecialistCollectionView:
            return SpecialistData?.count ?? 0
        case OfferCollectionView:
            return offersData?.count ?? 0
        default :
            return doctorsData?.count ?? 0
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case SpecialistCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpecialistCollectionViewCell.ID, for: indexPath) as! SpecialistCollectionViewCell
            cell.setup((SpecialistData?[indexPath.row ])!)
            return cell
        case OfferCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OfferCollectionViewCell.ID, for: indexPath) as! OfferCollectionViewCell
            cell.setUp((offersData?[indexPath.row])!)
            return cell
        default :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DoctorsCollectionViewCell.ID, for: indexPath) as! DoctorsCollectionViewCell
            cell.setUp((doctorsData?[indexPath.row])!)
            return cell
        }
    }
    
    // MARK: - Methods For layout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case SpecialistCollectionView:
            let width = collectionView.frame.width
            let height = (collectionView.frame.height)
            return CGSize(width: width / 3.6 , height: height)
        case OfferCollectionView:
            let width = collectionView.frame.width
            let height = (collectionView.frame.height)
            return CGSize(width: width / 1.5 , height: height)
        default :
            let width = collectionView.frame.width
            let height = (collectionView.frame.height)
            return CGSize(width: width / 2.8, height: height)
        }
    }
    
    
}

