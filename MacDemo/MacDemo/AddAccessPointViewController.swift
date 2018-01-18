//
//  AddAccessPointViewController.swift
//  MacDemo
//
//  Created by fengxin on 18/01/2018.
//  Copyright © 2018 fengxin. All rights reserved.
//

import Cocoa

class AddAccessPointViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

  }
  
  
  /// cancel
  ///
  /// - Parameter sender:
  @IBAction func didCancelClicked(_ sender: Any) {
    self.dismiss(self)
  }
  
  @IBAction func didActivate(_ sender: Any) {
    print("active!")
  }
  
}
