//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 김태원 on 2022/04/14.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let box = UIView()
    
    box.snp.makeConstraints { make in
        make.width.height.equalTo(100)
        make.center.equalToSuperview()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

