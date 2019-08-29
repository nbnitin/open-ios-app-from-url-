//
//  ViewController.swift
//  Multilangual
//
//  Created by Nitin Bhatia on 29/08/19.
//  Copyright © 2019 Nitin Bhatia. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    var x : URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // lblHello.text = "Hello".localized("German")
        lblHello.text = NSLocalizedString("BYE", comment: "bye")
        lblHello.sizeToFit()
        
       

    }
    
    override func viewDidAppear(_ animated: Bool) {
       print(x)
        if (x == nil) {
            return
        }
        // Process the URL.
        guard let components = NSURLComponents(url: x, resolvingAgainstBaseURL: true),
            let albumPath = components.path,
            let params = components.queryItems else {
                print("Invalid URL or album path missing")
                return
        }
        
        if let photoIndex = params.first(where: { $0.name == "arg1" })?.value {
            print("albumPath = \(albumPath)")
            print("photoIndex = \(photoIndex)")
            return
        } else {
            print("Photo index missing")
            return
        }
    }
    
    override func viewDidLayoutSubviews() {
        
    }


}

