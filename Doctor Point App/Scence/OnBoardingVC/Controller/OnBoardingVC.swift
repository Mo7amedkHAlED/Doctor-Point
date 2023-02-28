//
//  OnBoardingVC.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 26/02/2023.
//

import UIKit

class OnBoardingVC: UIViewController {
    
     // MARK:  @IBOutlet
    @IBOutlet weak var slidesCollectionView: UICollectionView!
    @IBOutlet weak var skipLbl: UIButton!
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    // MARK:  Vars
    static let ID = String(describing: OnBoardingVC.self)
    var slides:[SLide] = []
    var slideImgs = ["onboard1","onboard2","onboard3",]
    var slideTitles = ["Thousands of doctors","Live talk with doctor", "Chat with doctors"]
    var slideDesc = ["Access thousands of Doctors instantly. You can easily contact with the doctors and contact for your needs.", "Easily connect with doctor and start video chat for your better treatment & Prescription.", "Book an appointment with doctor. Chat with doctor via appointment letter. Get consultent."]
    var currentPage = 0{
        didSet{
            pageControll.currentPage = currentPage
            
            if currentPage == slides.count - 1{
                nextButton.setTitle("Get Started", for: .normal)
                skipLbl.isHidden = true
            }else{
                nextButton.setTitle("Next", for: .normal)
                skipLbl.isHidden = false
            }
            
        }
    }
    
    // MARK:  Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSlides()
    }
    // MARK:  Method to append Elements in array
    func setupSlides(){
        for i in 1...slideTitles.count{
            slides.append(SLide(slideImg: slideImgs[i - 1], slideTitle: slideTitles[i - 1], slideDesc: slideDesc[i - 1]))
        }
    }
    // MARK:  Button Action
    @IBAction func nextButton(_ sender: Any) {
 
        if currentPage == slides.count - 1{
            navigate(SignInOrCreateAccountVC.ID)
            UserDefaults.standard.hasOnboarded = true
        }else{
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            slidesCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
    }
    
    @IBAction func skipButton(_ sender: UIButton) {
        navigate(SignInOrCreateAccountVC.ID)
        UserDefaults.standard.hasOnboarded = true
    }
    
}
    // MARK:   Implement Collections Protocols
extension OnBoardingVC : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCell.ID, for: indexPath) as! OnBoardingCollectionViewCell
        cell.setup(with: slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
    
    
}
