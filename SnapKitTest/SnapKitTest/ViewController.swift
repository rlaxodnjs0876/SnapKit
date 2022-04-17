//
//  ViewController.swift
//  SnapKitTest
//
//  Created by 김태원 on 2022/04/15.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
        
    var redView = UIView()
    var orangeView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    var blueView = UIView()
    var indigoView = UIView()
    var purpleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(redView)
        self.view.addSubview(orangeView)
        self.view.addSubview(yellowView)
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
        self.view.addSubview(indigoView)
        self.view.addSubview(purpleView)
        
        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        indigoView.backgroundColor = .systemIndigo
        purpleView.backgroundColor = .purple
        
        redView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.size.width.height.equalTo(100)
            make.left.equalTo(view.snp.left)
        }
        
    }


}

