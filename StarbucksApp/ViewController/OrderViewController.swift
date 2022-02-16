//
//  OrderViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import UIKit

class OrderViewController: MainViewController {
    
    // MARK: - UI 연결
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: CustomLabel!
    @IBOutlet weak var orderCount: UILabel!
    
    @IBAction func minusButton(_ sender: UIButton) {
        let currentCount: Int = Int(orderCount.text!)!
        if currentCount > 1 {
            orderCount.text = String(currentCount-1)
            productPrice.text = DecimalWon(value: productPriceDictionary[productName.text!]! * Int(orderCount.text!)!)
        }
    }
    @IBAction func plusButton(_ sender: UIButton) {
        orderCount.text = String(Int(orderCount.text!)!+1)
        productPrice.text = DecimalWon(value: productPriceDictionary[productName.text!]! * Int(orderCount.text!)!)
    }
    
    
    
    // 그림자 넣기 위한 실선
    @IBOutlet weak var footerLine: UIView!
    // 헤더부분 실선
    @IBOutlet weak var headerLine: UIView!
    
    // delegate
    var delegate: ProductDataDelegate?
    
    // 버튼 스타일 지정 위한 연결
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var putInButton: UIButton!
    
    
    // 음료 사이즈 Segmented Control
    @IBOutlet weak var drinkSizeImage: UIImageView!
    @IBAction func chooseDrinkSize(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            drinkSizeImage.image = UIImage(named: "Short.jpg")
        case 1:
            drinkSizeImage.image = UIImage(named: "Tall.jpg")
        case 2:
            drinkSizeImage.image = UIImage(named: "Grande.jpg")
        default:
            drinkSizeImage.image = UIImage(named: "Venti.jpg")
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI 업데이트
        guard let productVC = delegate as? ProductInfoViewController else {
            return
        }
        let toOrderProductName = productVC.receivedProductName
        productName.text = toOrderProductName!
        productPrice.text = DecimalWon(value: productPriceDictionary[toOrderProductName!]!)
        
        
        // UI 세팅
        addBorderToUIView(footerLine, size: 1, color: UIColor.lightGray.cgColor)
        addBorderToUIButton(putInButton, size: 1, color: UIColor(red: 18/255, green: 166/255, blue: 104/255, alpha: 1).cgColor)
        addRadiusToUIButton(orderButton, size: 20)
        addRadiusToUIButton(putInButton, size: 20)
        addRadiusToUIView(headerLine, size: 3)
    }
}
