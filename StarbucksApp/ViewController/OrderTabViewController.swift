//
//  OrderTabViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/18.
//

import UIKit

class OrderTabViewController: MainViewController {
    
    // 하위 뷰 목록
    @IBOutlet weak var entireMenu: UIView!
    @IBOutlet weak var myOwnMenu: UIView!
    
    // Segmented Control
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    // 목록 글자, 초록바
    @IBOutlet weak var entireMenuLabel: UILabel!
    @IBOutlet weak var myOwnMenuLabel: UILabel!
    @IBOutlet weak var entireGreenBar: UIView!
    @IBOutlet weak var myOwnGreenBar: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // switch 초기화면 세팅
        entireMenu.alpha = 1
        myOwnMenu.alpha = 0
        myOwnMenuLabel.textColor = UIColor.lightGray
        myOwnGreenBar.alpha = 0
        
        
        
        
        // segmentControl 글자 색 변경
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        segmentControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.black]
        segmentControl.setTitleTextAttributes(titleTextAttributes2, for: .selected)
    }
    
    
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            entireMenu.alpha = 1
            myOwnMenu.alpha = 0
            myOwnMenuLabel.textColor = UIColor.lightGray
            myOwnGreenBar.alpha = 0
            entireMenuLabel.textColor = UIColor.black
            entireGreenBar.alpha = 1
        }else {
            entireMenu.alpha = 0
            myOwnMenu.alpha = 1
            myOwnMenuLabel.textColor = UIColor.black
            myOwnGreenBar.alpha = 1
            entireMenuLabel.textColor = UIColor.lightGray
            entireGreenBar.alpha = 0
        }
    }
    
}
