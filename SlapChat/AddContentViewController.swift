//
//  AddContentViewController.swift
//  SlapChat
//
//  Created by Ehsan Zaman on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddContentViewController: UIViewController {

    let store = DataStore.sharedDataStore
    
    @IBOutlet weak var contentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addContent(sender: AnyObject) {
        let message1 = NSEntityDescription.insertNewObjectForEntityForName(Message.entityName, inManagedObjectContext: store.managedObjectContext) as! Message
        
        message1.content = contentTextField.text
        message1.createdAt = NSDate()
        
        store.saveContext()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
