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
        
    var redView = UIView()
    var orangeView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    var blueView = UIView()
    var indigoView = UIView()
    var purpleView = UIView()
    
    let thenLabel = UILabel().then {
        $0.textColor = UIColor.red
        $0.textAlignment = .left
        $0.text = "뭘봐"
        $0.font = UIFont(name: "ArialHebrew", size: UIFont.labelFontSize)
    }
    
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
        
        
        
        self.view.addSubview(thenLabel)
        
    }


}

