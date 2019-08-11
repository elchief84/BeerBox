//
//  BrowseBeerTableViewController.swift
//  beerbox
//
//  Created by Vincenzo Romano on 11/08/19.
//  Copyright © 2019 Vincenzo Romano. All rights reserved.
//

import UIKit
import Alamofire
import Realm
import RealmSwift

class BrowseBeerTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Realm
        
    }
    
    func fetchBeer(page:Int) {
        Alamofire.request(Common.api(method: Common.GET_API)).responseJSON { (data) in
            debugPrint(data);
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (section == 0) ? 2 : 10;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch(indexPath.section){
        case 0:
            if(indexPath.row == 0) { return makeOfferCell(tableView: tableView, indexPath: indexPath); }
            if(indexPath.row == 1) { return makeIngredientCell(tableView: tableView, indexPath: indexPath); }
        case 1:
            return makeBeerCell(tableView: tableView, indexPath: indexPath);
        default:
            fatalError();
        }
        fatalError();
    }
    
    private func makeOfferCell(tableView: UITableView, indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "offerCell", for: indexPath);
        return cell;
    }
    
    private func makeIngredientCell(tableView: UITableView, indexPath:IndexPath) -> UITableViewCell {
        let cell:IngredientsCell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell", for: indexPath) as! IngredientsCell;

        return cell;
    }
    
    private func makeBeerCell(tableView: UITableView, indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "beerCell", for: indexPath);
        return cell;
    }

}
