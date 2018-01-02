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
class FeedVC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!



    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

    }

@IBAction func signOut(_ sender: Any) {
    print("Memes: ")
    KeychainWrapper.standard.removeObject(forKey: KEY_UID)
    try!Auth.auth().signOut()
    dismiss(animated: true) {
        ///
    }


}

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell

    }





}
