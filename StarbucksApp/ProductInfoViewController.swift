//
//  ProductInfoViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/15.
//

import UIKit


class ProductInfoViewController: UIViewController {
    
    // 핫/아이스 토글
    @IBOutlet weak var hotOrIced: UISegmentedControl!
    
    // 주문하기 버튼
    @IBOutlet weak var orderButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Segmented Control 설정
        hotOrIced.backgroundColor = .white
        hotOrIced.selectedSegmentTintColor = .orange
        
        
        // 주문버튼 테두리 설정
        orderButton.layer.cornerRadius = 15
    }
}
