//
//  ViewController.swift
//  NSFileProviderExtensionSample
//
//  Created by kotaro on 2017/02/18.
//  Copyright © 2017年 kotaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIDocumentMenuDelegate, UIDocumentPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // DocumentMenu
        let documentVC = UIDocumentMenuViewController(documentTypes: ["public.text"], in: .import)
        let sampleVC = SampleViewController()
        
        // DocumentMenuに項目を追加する
        documentVC.addOption(withTitle: "Sample", image: #imageLiteral(resourceName: "akiyama"), order: .first, handler: {
            // ハンドリング
            self.present(sampleVC, animated: true, completion: nil)
        })
        
        documentVC.delegate = self
        
        // ドキュメントメニューを表示する。
        self.present(documentVC, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // メニューで選択されたDocumentPickerを表示する
    internal func documentMenu(_ documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController) {
        documentPicker.delegate = self
        present(documentPicker, animated: true, completion: nil)
        
    }
    
    internal func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        
    }

}

