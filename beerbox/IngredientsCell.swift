//
//  IngredientsCell.swift
//  beerbox
//
//  Created by Vincenzo Romano on 11/08/19.
//  Copyright © 2019 Vincenzo Romano. All rights reserved.
//

import UIKit

class IngredientsCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet public weak var ingredientsCollection: UICollectionView!
    @IBOutlet weak var flowLayout:UICollectionViewFlowLayout! {
        didSet {
            flowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize;
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath);
        return cell;
    }
    
}
