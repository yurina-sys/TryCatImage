//
//  ViewController.swift
//  TryCatImage
//
//  Created by 齋藤百合奈 on 2021/11/14.
//

import UIKit

class CatImageViewController: UIViewController {
    
    private let presenter = CatImagePresenter()
    private var isFavorite:Bool = false
    
    let favoriteImage = UIImage(named: "heart")?.withRenderingMode(.alwaysTemplate)
    let uncheckedImage = UIImage(named: "checkbox_off")?.withRenderingMode(.alwaysTemplate)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var favoriteTextLabel: UILabel!
    
    @IBOutlet weak var favoriteButton: UIButton!
    
    @IBAction func pushFavoriteButton(_ sender: Any) {
        if isFavorite {
            favoriteTextLabel.text = "お気に入り追加"
            favoriteButton.tintColor = .blue
            isFavorite = false
        } else {
            favoriteTextLabel.text = "お気に入り解除"
            favoriteButton.tintColor = .red
            isFavorite = true
        }
    }
    
    @IBAction func pushCatGetButton(_ sender: Any) {
        self.presenter.pushCatGetButton()
    }
    
}

