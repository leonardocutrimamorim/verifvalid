//
//  ViewController.swift
//  verifvalid
//
//  Created by Leonardo Amorim on 22/09/2018.
//  Copyright © 2018 Leonardo Amorim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(wordCount(s: "foo foo bar"))
        print(getContentsFromFile())
        print(wordCountFile(path: "/Users/leonardoamorim/Desktop/verifvalid/teste.txt"))
    }


}

