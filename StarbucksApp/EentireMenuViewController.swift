//
//  EentireMenuViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/18.
//

import UIKit

class EntireMenuViewController: MainViewController {
    
    @IBOutlet weak var drinkView: UIView!
    @IBOutlet weak var foodView: UIView!
    @IBOutlet weak var productView: UIView!
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            drinkView.alpha = 1
            foodView.alpha = 0
            productView.alpha = 0
        case 1:
            drinkView.alpha = 0
            foodView.alpha = 1
            productView.alpha = 0
        default:
            drinkView.alpha = 0
            foodView.alpha = 0
            productView.alpha = 1
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 첫 화면 구성
        drinkView.alpha = 1
        foodView.alpha = 0
        productView.alpha = 0
        
        
        // MARK: - Segment Control 설정
        // 선택된 배경
//        segmentControl.selectedSegmentTintColor = .systemBackground
        // 전체 배경
//        segmentControl.backgroundColor = .systemBackground
        // 글자 색 변경
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        segmentControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.black]
        segmentControl.setTitleTextAttributes(titleTextAttributes2, for: .selected)
    }
}
