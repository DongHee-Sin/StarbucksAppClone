//
//  ViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/13.
//

import UIKit

class ViewController: MainViewController {
    
    // MARK: - Header
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var toFixView: UIView!
    
    var maxTopHeight: CGFloat?
    var minTopHeight: CGFloat?
    
    
    
    // MARK: - 상품 버튼들 연결
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var b: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var d: UIButton!
    @IBOutlet weak var e: UIButton!
    @IBOutlet weak var f: UIButton!
    @IBOutlet weak var g: UIButton!
    @IBOutlet weak var h: UIButton!
    @IBOutlet weak var i: UIButton!
    @IBOutlet weak var j: UIButton!
    @IBOutlet weak var k: UIButton!
    @IBOutlet weak var l: UIButton!
    @IBOutlet weak var m: UIButton!
    @IBOutlet weak var n: UIButton!
    @IBOutlet weak var o: UIButton!
    @IBOutlet weak var p: UIButton!
    
    
    
    // MARK: - 광고 버튼 연결
    @IBOutlet weak var commercialButton: UIButton!
    
    
    
    
    // MARK: - User Default
    var isPopUpOn: Bool = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - 팝업View 띄우기
        isPopUpOn = UserDefaults.standard.bool(forKey: "popUpSwitch")
//        isPopUpOn = true
        if isPopUpOn == true {
            guard let popUpView = storyboard?.instantiateViewController(withIdentifier: "popUpView") as? PopUpViewController else {
                return
            }
            
            self.navigationController?.pushViewController(popUpView, animated: false)
        }

        
        
        // MARK: - 상단 고정 View 잡기위한 높이값 받기
        maxTopHeight = headerView.frame.height
        minTopHeight = toFixView.frame.height
        
        
        
        // MARK: - 버튼들 Target 지정
        a.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        b.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        c.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        d.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        e.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        f.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        g.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        h.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        i.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        j.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        k.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        l.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        m.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        n.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        o.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        p.addTarget(self, action: #selector(didProductButtonTouched), for: .touchUpInside)
        commercialButton.addTarget(self, action: #selector(didCommercialButtonTouched), for: .touchUpInside)
    }
}



// ScrollView Delegate
//extension ViewController: UIScrollViewDelegate {
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//
//        //현재 스크롤의 위치 (최상단 = 0)
//        let y: CGFloat = scrollView.contentOffset.y
//
//        //변경될 최상단 뷰의 높이
//        let ModifiedTopHeight: CGFloat = viewTopHeight.constant - y
//
//        // *** 변경될 높이가 최댓값을 초과함
//        if(ModifiedTopHeight > maxTopHeight)
//        {
//            //현재 최상단뷰의 높이를 최댓값(250)으로 설정
//            viewTopHeight.constant = maxTopHeight
//        }// *** 변경될 높이가 최솟값 미만임
//        else if(ModifiedTopHeight < minTopHeight)
//        {
//            //현재 최상단뷰의 높이를 최솟값(50+상태바높이)으로 설정
//            viewTopHeight.constant = minTopHeight
//        }// *** 변경될 높이가 최솟값(50+상태바높이)과 최댓값(250) 사이임
//        else
//        {
//            //현재 최상단 뷰 높이를 변경함
//            viewTopHeight.constant = ModifiedTopHeight
//            scrollView.contentOffset.y = 0
//        }
//    }
//}
