//
//  TableViewController.swift
//  SlapChat
//
//  Created by susan lovaglio on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
       let store = DataStore.sharedDataStore
    override func viewDidLoad() {
        super.viewDidLoad()
        store.fetchData()
        self.tableView.reloadData()
        
    
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        store.fetchData()
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.messages.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = store.messages[indexPath.row].content
        
        return cell
    }
}
