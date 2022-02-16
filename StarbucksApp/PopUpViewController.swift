//
//  PopUpViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import UIKit

class PopUpViewController: MainViewController {
    
    // 버튼 라운딩 위한 연결
    @IBOutlet weak var seeMoreButton: UIButton!
    
    
    // MARK: - 버튼 Action 연결
    @IBAction func didSeeMoreButtonTouched(_ sender: UIButton) {
    }
    
    @IBAction func didDontSeeButtonTouched(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "popUpSwitch")
        popView()
    }
    @IBAction func didCloseButtonTouched(_ sender: UIButton) {
        popView()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 자세히보기 버튼 둥글게
        addRadiusToUIButton(seeMoreButton, size: 15)
        
        
        // 탭바 컨트롤러 히든
        tabBarController?.tabBar.isHidden = true
    }
    
    func popView() {
        self.navigationController?.popViewController(animated: false)
    }
}
