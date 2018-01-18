//
//  AddAccessPointViewController.swift
//  MacDemo
//
//  Created by fengxin on 18/01/2018.
//  Copyright © 2018 fengxin. All rights reserved.
//

import Cocoa

class AddAccessPointViewController: NSViewController {

  @IBOutlet weak var progressView: NSProgressIndicator!
  @IBOutlet weak var progressLab: NSTextField!
  
  override func viewDidLoad() {
        super.viewDidLoad()

  }
  
  /// cancel
  ///
  /// - Parameter sender:
  @IBAction func didCancelClicked(_ sender: Any) {
    self.dismiss(self)
  }
  
  
  /// achive 激活
  ///
  /// - Parameter sender: 激活
  @IBAction func didActivate(_ sender: Any) {
    print("active!")
    //show alter
//    showAlert(title: "message", content: "content")
    toggleProvisionStatusIndicator(true)
  }
  
  func toggleProvisionStatusIndicator(_ provisioning: Bool) {
    self.progressLab.isHidden = !provisioning
    self.progressView.isHidden = !provisioning
    if provisioning {
      //指示进度条
      self.progressView.startAnimation(nil)
    } else {
      self.progressView.stopAnimation(nil)
    }

  }
  
}
