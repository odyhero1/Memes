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
import SwiftKeychainWrapper
class SignInVC: UIViewController {
    @IBOutlet weak var emailField: TextField!
    @IBOutlet weak var passField: TextField!

    override func viewDidLoad() {
        super.viewDidLoad()



    }

    override func viewDidAppear(_ animated: Bool) {
        if let _ = KeychainWrapper.standard.string(forKey: KEY_UID) {
            print("id found")
            performSegue(withIdentifier: "goToFeed", sender: nil)
        }
    }


    @IBAction func FButtonTapped(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in if error != nil {
            print("U r fucked \(String(describing: error))")
        } else if result?.isCancelled == true {
            print("they didnt accept")
        } else {
            let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
            self.firebaseAuth(credential)
            }
        }
    }
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("firebase prob \(String(describing: error))")
            } else {
                print("Firebase is ok")
                if let user = user {

                    self.completeSignIn(id: user.uid)
                }
            }
        })

    }

    @IBAction func signInTapped(_ sender: Any) {
        if let email = emailField.text, let pass = passField.text {
            Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                if error == nil {
                    print("We are in")
                    if let user = user {
                        self.completeSignIn(id: user.uid)
                    }
                } else {
                    Auth.auth().createUser(withEmail: email, password: pass, completion: { (user, error) in
                        if error != nil {
                            print("cant authenticate w/th firebase")
                        } else {
                            print("we are in w/th email")
                            if let user = user {
                                self.completeSignIn(id: user.uid)
                            }

                        }
                    })
                }
            })
        }
    }
    func completeSignIn(id: String) {
        let keychainResult =  KeychainWrapper.standard.set(id, forKey: KEY_UID)
        print("mate data saved \(keychainResult)")
        // performSegue(withIdentifier: "goToFeed", sender: nil)
    }
}


