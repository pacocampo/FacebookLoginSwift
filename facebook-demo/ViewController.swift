//
//  ViewController.swift
//  facebook-demo
//
//  Created by Francisco Ocampo Romero on 09/11/16.
//  Copyright © 2016 coldhandslabs. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Facebook Button
    let loginButton : FBSDKLoginButton = FBSDKLoginButton()
    loginButton.readPermissions = ["email", "public_profile"]
    loginButton.center = self.view.center
    self.view.addSubview(loginButton)
    
    // Access Token
    if let token = FBSDKAccessToken.current() {
      let req = FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,name"], tokenString: token.tokenString, version: nil, httpMethod: "GET")
      req!.start(completionHandler: { (connection, result, error) in
        if(error == nil) {
            print("result \(result!)")
          } else {
            print("error \(error)")
          }
      })
    }
  }
  
  override func viewDidAppear(_ animated: Bool) {

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

