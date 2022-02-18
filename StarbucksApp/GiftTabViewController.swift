//
//  GiftTabViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/17.
//

import UIKit

class GiftTabViewController: MainViewController {
    
    // 그림자 삽입 위한 UI 연결
    @IBOutlet weak var deleverView: UIView!
    @IBOutlet weak var giftItemView: UIView!
    @IBOutlet weak var giftCardView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 그림자 추가
        addShadow(deleverView, color: UIColor.lightGray.cgColor, width: 0, height: 10, alpha: 0.5, radius: 10)
        addShadow(giftItemView, color: UIColor.lightGray.cgColor, width: 0, height: 10, alpha: 0.5, radius: 10)
        addShadow(giftCardView, color: UIColor.lightGray.cgColor, width: 0, height: 10, alpha: 0.5, radius: 10)
    }
}
