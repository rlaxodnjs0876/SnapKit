//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 김태원 on 2022/04/15.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    let nameLabel = UILabel()
    let nameTextField = UITextField()
    let changeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpValue()
        setUpView()
        setConstraints()
    }
    
    // 요소 내용 설정
    func setUpValue() {
        nameLabel.text = "Label"
        nameTextField.backgroundColor = .gray
        changeButton.backgroundColor = .blue
    }
    
    // 뷰 구성요소 세팅
    func setUpView() {
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(changeButton)
    }
    
    // 뷰 구성요소 제약 설정
    func setConstraints() {
        changeButton.snp.makeConstraints { make in
            make.center.equalToSuperview() // View의 정중앙에 배치 할 것
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalToSuperview().offset(-24)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(24)
            make.leading.trailing.equalTo(nameLabel)
        }
    }
    
    
}

