//
//  ViewController.swift
//  Memes
//
//  Created by Odysseas Herodotou on 24/12/2017.
//  Copyright © 2017 Odysseas Herodotou. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // if ([FBSDKAccessToken currentAccessToken]) {
            // User is logged in, do work such as go to next view controller.
      //  }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func FButtonTapped(_ sender: Any) {
         let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in if error != nil {
            print("U r fucked \(String(describing: error))")
        } else if result?.isCancelled == true {
            print("they didnt accept")
            let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
            self.firebaseAuth(credential)
            }
    }
}
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("firebase prob \(error)")
            } else {
                print("Firebase is ok")
            }
        })

    }

}
