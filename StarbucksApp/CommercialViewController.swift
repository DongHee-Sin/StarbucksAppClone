//
//  CommercialViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import UIKit

class CommercialViewController: MainViewController {
    
    // Header
    @IBOutlet weak var headerLine: UIView!
    
    // 광고 제목 View
    @IBOutlet weak var titleView: UIView!
    
    // 뒤로가기 버튼
    @IBAction func popView(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Header 하단 그림자 넣기
        headerLine.layer.borderWidth = 1
        headerLine.layer.borderColor = UIColor.lightGray.cgColor
        headerLine.layer.masksToBounds = false
        headerLine.layer.shadowColor = UIColor.lightGray.cgColor
        headerLine.layer.shadowOffset = CGSize(width: 0, height: 20)
        headerLine.layer.shadowOpacity = 0.8
        headerLine.layer.shadowRadius = 5
        
        
        // 제목View 테두리 지정
        addBorderToUIView(titleView, size: 1, color: UIColor.lightGray.cgColor)
        
        
        // 탭바 컨트롤러 OFF
        tabBarController?.tabBar.isHidden = true
    }
}
