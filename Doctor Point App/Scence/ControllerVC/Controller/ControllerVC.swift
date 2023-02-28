//
//  ControllerVC.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 27/02/2023.
//

import UIKit

class ControllerVC: UIViewController {
    static let ID = String(describing: ControllerVC.self)
    // MARK:  @IBOutlet
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var documentButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var notificationButton: UIButton!
    // MARK:  Vars
    var lastSender = 1
    
    // MARK:  Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        replaceV(HomeVC.ID)
      
    }
    // MARK:  Method to Replace view Controller
    @objc func replaceV(_ ID:String){
        ViewEmbeder.embed(vcID: ID, parent: self, container: container)
    }
//    // MARK:  Method to change Image color
//    func toggle(_ sender:UIButton){
//        sender.setImage(sender.currentImage?.withRenderingMode(.alwaysTemplate), for: .normal)
//        sender.tintColor = UIColor.green
//    }
    
    @IBAction func navButton(_ sender: UIButton) {
        
        // MARK:  IF for change color last selected
        if let lastPressedBtn:UIButton = view.viewWithTag(lastSender) as? UIButton{
            lastPressedBtn.isSelected  = false
        }
        
        switch sender.tag{
        case 1:
            replaceV(HomeVC.ID)
//            toggle(sender)
            homeButton.isSelected = true
        case 2:
            replaceV(NavVC.ID)
            notificationButton .isSelected = true
        case 3:
            replaceV(NavVC.ID)
            searchButton.isSelected = true

        case 4:
            replaceV(NavVC.ID)
            documentButton.isSelected = true

        default:
            replaceV(NavVC.ID)
            categoryButton.isSelected = true

        }
        
        lastSender = sender.tag
        print(lastSender)
        
    }
}
