//
//  ViewController.swift
//  Share-Link-iOS
//
//  Created by Chhan Sophearith on 5/7/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapShareLink(_ sender: UIButton) {
        
        let descriptionTitle =
            """
            Click below link to open youtube: \("https://www.youtube.com/") from App Store or Play Store.
            """
        let sharedContents = [
            descriptionTitle
        ]
        
        let activityViewController = UIActivityViewController(activityItems: sharedContents,
                                                              applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        present(activityViewController, animated: true, completion: nil)
    }
    
}

