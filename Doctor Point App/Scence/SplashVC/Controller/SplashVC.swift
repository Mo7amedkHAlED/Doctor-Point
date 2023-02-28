//
//  ViewController.swift
//  Doctor Point App
//
//  Created by Mohamed Khaled on 26/02/2023.
//

import UIKit

class SplashVC: UIViewController {

    @IBOutlet var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if UserDefaults.standard.hasOnboarded {
                let vc = self.storyboard?.instantiateViewController(identifier: SignInOrCreateAccountVC.ID)
                self.navigationController?.pushViewController(vc!, animated: true)
            } else {
                let vc = self.storyboard?.instantiateViewController(identifier: OnBoardingVC.ID)
                self.navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }


}

