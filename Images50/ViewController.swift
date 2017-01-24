//
//  ViewController.swift
//  Images50
//
//  Created by Hiroshi Uyama on 2017/01/24.
//  Copyright © 2017年 Hiroshi Uyama. All rights reserved.
//

import UIKit
import WebImage

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // こっからパクり
        // https://iphone-app-tec.com/ios/collectionview.html
        let testCell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
        imageView.backgroundColor = UIColor.lightGray
        imageView.image = nil // 前のイメージが表示される問題の対応
//        let uuid = NSUUID().uuidString
        let url = URL(string: "http://lorempixel.com/256/256/?index=" + String(indexPath.row))
        imageView.sd_setImage(with: url)
        
        return testCell;
    }
    
    // MARK: - UICollectionViewDelegate


}

