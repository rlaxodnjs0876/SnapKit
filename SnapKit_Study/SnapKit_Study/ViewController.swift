//
//  ViewController.swift
//  SnapKit_Study
//
//  Created by 김태원 on 2022/04/21.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let titleLabel = UILabel().then {
        $0.text = "로그인"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 40,weight: .bold)
    }
    
    let idField = UITextField().then {
        $0.addLeftPadding()
        $0.textColor = .black
        $0.backgroundColor = UIColor.init(named: "fieldColor")
        $0.placeholder = "아이디를 입력해라"
        $0.layer.borderWidth = 0.5
        $0.layer.cornerRadius = 0
        $0.layer.borderColor = UIColor.black.cgColor
    }
    
    let PwField = UITextField().then {
        $0.addLeftPadding()
        $0.textColor = .black
        $0.backgroundColor = UIColor.init(named: "fieldColor")
        $0.placeholder = "비밀번호를 입력해주세여"
        $0.layer.borderColor = UIColor.black.cgColor
        $0.layer.borderWidth = 0.5
        $0.layer.cornerRadius = 0
    }
    
    let idDeleteBtn = UIButton().then {
        $0.setImage(UIImage(systemName: "xmark.circle"), for: .normal)
        $0.tintColor = .black
    }
    
    let PwDeleteBtn = UIButton().then {
        $0.setImage(UIImage(systemName: "xmark.circle"), for: .normal)
    }
    
}
extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
