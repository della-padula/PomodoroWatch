//
//  ViewController.swift
//  PomodoroWatch
//
//  Created by Denny on 2021/02/09.
//

import SnapKit
import UIKit

class ViewController: UIViewController {

    private var textLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMainLayout()
        setViewProperties()
    }
    
    private func setMainLayout() {
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    private func setViewProperties() {
        view.backgroundColor = .white
        textLabel.font = .systemFont(ofSize: 14)
        textLabel.textColor = .black
        textLabel.text = "Hello World"
    }

}

