//
//  ConversionWebViewController.swift
//  Table Spoon
//
//  Created by Zhongren Gao on 5/7/16.
//  Copyright © 2016 Zhongren Gao. All rights reserved.
//

import UIKit

class ConversionWebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var conversionWebpage: UIWebView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var ingredient = Ingredient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conversionWebpage.delegate = self
        conversionWebpage.loadRequest(ingredient.request)
        
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        spinner.startAnimating()
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        spinner.stopAnimating()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
