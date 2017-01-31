//
//  AsyncImageView.swift
//  MnetSwiftTest
//
//  Created by OHSEUNGWOOK on 2017. 1. 31..
//  Copyright © 2017년 OHSEUNGWOOK. All rights reserved.
//

import UIKit

class AsyncImageView: UIImageView {

 
	func loadImage(urlString: String){
		
		let urlStr :String = urlString;
		if !urlStr.isEmpty {
			
			let CACHE_SEC : TimeInterval = 5 * 60;
			
			let request = URLRequest(url: URL(string: urlStr)!, cachePolicy: .returnCacheDataElseLoad, timeoutInterval: CACHE_SEC)
			let conf =  URLSessionConfiguration.default;
			let session = URLSession(configuration: conf, delegate: nil, delegateQueue: OperationQueue.main);
			
			let task = session.dataTask(with: request as URLRequest!){ data, response, error in
				
				if (error == nil){
					
					let image = UIImage(data:data!)
					self.image = image;
					
				} else { //Error
					print("AsyncImageView:Error \(error?.localizedDescription)");
				}
			}
			
			task.resume()
		}
	}
}

