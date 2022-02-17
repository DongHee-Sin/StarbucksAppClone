//
//  ViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/13.
//

import UIKit

class ViewController: MainViewController {
    
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

