//
//  ProductInfoViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/15.
//

import UIKit


protocol ProductDataDelegate {
    func getProductName() -> String
}


class ProductInfoViewController: UIViewController {
    // UI 정보
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productEnglishName: UILabel!
    @IBOutlet weak var productInfo: UILabel!
    @IBOutlet weak var price: CustomLabel!
    
    
    // 핫/아이스 토글
    @IBOutlet weak var segmentedImage: UIImageView!
    @IBOutlet weak var hotOrIced: UISegmentedControl!
    @IBAction func didTouched(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            segmentedImage.image = UIImage(named: "핫.jpg")
        default:
            segmentedImage.image = UIImage(named: "아이스.jpg")
        }
    }
    
    
    // 주문하기 버튼
    @IBOutlet weak var orderButton: UIButton!
    
    
    // 뒤로가기 버튼
    @IBAction func fallBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    // delegate
    var delegate: ProductDataDelegate?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Segmented Control 설정
        hotOrIced.alpha = 0.02
        
        
        // 주문버튼 테두리 설정
        orderButton.layer.cornerRadius = 15
        
        
        // delegate로 받아온 데이터 처리
        let receivedProductName: String = delegate?.getProductName() ?? ""
        viewUpdateBy(receivedProductName)
    }
    
    
    // 매개변수를 가지고 뷰 업데이트 함수
    func viewUpdateBy(_ name: String) {
        productImage.image = UIImage(named: "\(name) BIG.jpg")
        productName.text = name
        productEnglishName.text = productEnglishNameDictionary[name] ?? ""
        productInfo.text = productInfoDictionary[name] ?? ""
        price.text = DecimalWon(value: productPriceDictionary[name] ?? 0)
        hotOrIced.selectedSegmentIndex = productIsHot[name]! ? 0 : 1
        if hotOrIced.selectedSegmentIndex == 0 {
            segmentedImage.image = UIImage(named: "핫.jpg")
        }else {
            segmentedImage.image = UIImage(named: "아이스.jpg")
        }
    }
    
    // 숫자 천단위로 콤마 찍어서 문자열로 반환 함수
    func DecimalWon(value: Int) -> String{
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let result = numberFormatter.string(from: NSNumber(value: value))! + "원"
            return result
    }
}
