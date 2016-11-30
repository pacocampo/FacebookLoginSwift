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
    
    let loginButton : FBSDKLoginButton = FBSDKLoginButton()
    loginButton.center = self.view.center
    self.view.addSubview(loginButton)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

