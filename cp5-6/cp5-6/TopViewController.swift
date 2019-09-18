//
//  TopViewController.swift
//  cp5-6
//
//  Created by 酒井典昭 on 2019/09/17.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var mainView: TopMainView!
    
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        mainView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopViewController: TopMainViewDelegate {
    func selectedRow(indexPath: IndexPath) {
        let secondViewController = SecondViewController()
        transitionViewController(from: self, to: secondViewController)
        
    }
    
    
}

// MARK: - method
extension TopViewController {
    
}

