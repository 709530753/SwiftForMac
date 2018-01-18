//
//  AlterTool.swift
//  MacDemo
//
//  Created by fengxin on 18/01/2018.
//  Copyright © 2018 fengxin. All rights reserved.
//

import Foundation

#if os(iOS)
  import UIKit
#elseif os(OSX)
  import AppKit
#endif

extension NSViewController {
  
  func showAlert(title: String, content: String, completionHandler: ((NSApplication.ModalResponse) -> Void)? = nil) {
    let alert = NSAlert()
    alert.messageText = title
    alert.informativeText = content
    alert.alertStyle = NSAlert.Style.warning
    alert.addButton(withTitle: "OK")
    alert.addButton(withTitle: "Cancel")
    alert.beginSheetModal(for: self.view.window!, completionHandler: completionHandler)
  }
  
}
