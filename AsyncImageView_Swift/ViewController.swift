//
//  ViewController.swift
//  AsyncImageView_Swift
//
//  Created by OHSEUNGWOOK on 2017. 1. 31..
//  Copyright © 2017년 OHSEUNGWOOK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var asyncImageView: AsyncImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		asyncImageView.loadImage(urlString: "http://www.gstatic.com/webp/gallery/4.jpg")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

