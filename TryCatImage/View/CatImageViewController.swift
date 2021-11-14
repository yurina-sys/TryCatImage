//
//  ViewController.swift
//  TryCatImage
//
//  Created by 齋藤百合奈 on 2021/11/14.
//

import UIKit

class CatImageViewController: UIViewController {
    
    private let presenter = CatImagePresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    @IBAction func pushCatGetButton(_ sender: Any) {
        self.presenter.pushCatGetButton()
    }
    
}

