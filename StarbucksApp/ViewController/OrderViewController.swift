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
    
    @IBOutlet weak var hearImage: UIImageView!
    
    
    // 찜하기 버튼
    @IBAction func didHeartButtonTouched(_ sender: UIButton) {
        if isUserLikeProduct[productName.text!]! == false {
            hearImage.image = UIImage(named: "heartSelected.jpeg")
            isUserLikeProduct[productName.text!]! = true
        }else {
            hearImage.image = UIImage(named: "heartNomal.jpeg")
            isUserLikeProduct[productName.text!]! = false
        }
    }
    
    
    
    var orderPrice: Int?
    
    @IBAction func minusButton(_ sender: UIButton) {
        let currentCount: Int = Int(orderCount.text!)!
        if currentCount > 1 {
            orderCount.text = String(currentCount-1)
            orderPrice = productPriceDictionary[productName.text!]! * Int(orderCount.text!)!
            productPrice.text = DecimalWon(value: orderPrice!)
        }
    }
    @IBAction func plusButton(_ sender: UIButton) {
        orderCount.text = String(Int(orderCount.text!)!+1)
        orderPrice = productPriceDictionary[productName.text!]! * Int(orderCount.text!)!
        productPrice.text = DecimalWon(value: orderPrice!)
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
    
    
    // MARK: - Segmented Control
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
    
    // 컵 선택 Segmented Control
    @IBOutlet weak var chooseCupImage: UIImageView!
    @IBAction func chooseCupButton(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            chooseCupImage.image = UIImage(named: "매장컵.jpeg")
        case 1:
            chooseCupImage.image = UIImage(named: "개인컵.jpeg")
        default:
            chooseCupImage.image = UIImage(named: "일회용컵.jpeg")
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 주문하기 버튼 addTarget
        orderButton.addTarget(self, action: #selector(didTouchedButtonToPayment), for: .touchUpInside)
        
        
        // UI 업데이트
        guard let productVC = delegate as? ProductInfoViewController else {
            return
        }
        let toOrderProductName = productVC.delegate?.getProductName()
        productName.text = toOrderProductName!
        productPrice.text = DecimalWon(value: productPriceDictionary[toOrderProductName!]!)
        
        // 찜하기 버튼 UI 업데이트
        if isUserLikeProduct[productName.text!]! == false {
            hearImage.image = UIImage(named: "heartNomal.jpeg")
        }else {
            hearImage.image = UIImage(named: "heartSelected.jpeg")
        }
        
        
        
        
        // UI 세팅
        addBorderToUIView(footerLine, size: 1, color: UIColor.lightGray.cgColor)
        addBorderToUIButton(putInButton, size: 1, color: UIColor(red: 18/255, green: 166/255, blue: 104/255, alpha: 1).cgColor)
        addRadiusToUIButton(orderButton, size: 20)
        addRadiusToUIButton(putInButton, size: 20)
        addRadiusToUIView(headerLine, size: 3)
    }
}
