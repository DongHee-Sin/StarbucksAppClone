//
//  ViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/13.
//

import UIKit

class ViewController: UIViewController, ProductDataDelegate {
    
    
    
    // 버튼이 눌린 상품의 이름을 저장하는 변수
    var touchedProductName: String?
    
    
    // Delegate 통해서 함수를 호출하면 버튼이 눌린 상품의 이름을 반환하는 함수 작성
    func getProductName() -> String {
        if let noneOptionalName = touchedProductName {
            return noneOptionalName
        }else {
            return ""
        }
    }
    
    
    // 상품 버튼을 눌렀을 때 작동할 함수
    func productButtonTouched(_ sender: UIButton) {
        // 선택된 상품의 이름을 가져와서 변수에 저장
        guard let productName = sender.superview?.subviews[1] as? UILabel else {
            return
        }
        touchedProductName = productName.text ?? ""
        
        // 뷰 연결, delegate지정
        guard let productView = storyboard?.instantiateViewController(withIdentifier: "productView") as? ProductInfoViewController else {
            return
        }
        productView.delegate = self
        
        self.navigationController?.pushViewController(productView, animated: true)
    }
    
    
    
    
    @IBAction func didTouchedButton(_ sender: UIButton) {
        productButtonTouched(sender)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

