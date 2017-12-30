//
//  FeedVC.swift
//  Memes
//
//  Created by Odysseas Herodotou on 29/12/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//
import Firebase
import UIKit
import SwiftKeychainWrapper
class FeedVC: UIViewController {

    @IBAction func signOut(_ sender: Any) {
        print("Memes: ")
KeychainWrapper.standard.removeObject(forKey: KEY_UID)
        try!Auth.auth().signOut()
        dismiss(animated: true) {
            //
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
