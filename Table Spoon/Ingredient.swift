//
//  Ingredient.swift
//  Table Spoon
//
//  Created by Zhongren Gao on 5/7/16.
//  Copyright © 2016 Zhongren Gao. All rights reserved.
//

import Foundation

struct webpageURL {
    static let home = "http://www.traditionaloven.com/"
    static let flour = "http://www.traditionaloven.com/conversions_of_measures/flour_volume_weight.html"
    static let butter = "http://www.traditionaloven.com/conversions_of_measures/butter_converter.html"
    static let sugar = "http://www.traditionaloven.com/conversions_of_measures/sugar_amounts.html"
    static let yeast = "http://www.traditionaloven.com/conversions_of_measures/yeast_converter.html"
    static let rice = "http://www.traditionaloven.com/conversions_of_measures/rice_amounts_converter.html"
    static let rolled_oats = "http://www.traditionaloven.com/conversions_of_measures/rolled_oats_measures_converter.html"
    static let yogurt = "http://www.traditionaloven.com/conversions_of_measures/yogurt_converter.html"
}

class Ingredient {
    
    var name:String {
        didSet {
            let ingredientName = name
            var url:NSURL?
            
            switch ingredientName {
                case "flour":
                    url = NSURL(string: webpageURL.flour)
                case "butter":
                    url = NSURL(string: webpageURL.butter)
                case "sugar":
                    url = NSURL(string: webpageURL.sugar)
                case "yeast":
                    url = NSURL(string: webpageURL.yeast)
                case "rice":
                    url = NSURL(string: webpageURL.rice)
                case "rolled oats":
                    url = NSURL(string: webpageURL.rolled_oats)
                case "yogurt":
                    url = NSURL(string: webpageURL.yogurt)
                default:
                    url = NSURL(string: webpageURL.home)
            }
            
            request = NSURLRequest(URL: url!)
        }
    }
    var request:NSURLRequest
    
    init() {
        name = "homepage"
        let url = NSURL(string: webpageURL.home)
        request = NSURLRequest(URL: url!)
    }
    
    init(ingredient:String) {
        name = ingredient
        var url:NSURL?
        switch ingredient {
        case "flour":
            url = NSURL(string: webpageURL.flour)
        case "butter":
            url = NSURL(string: webpageURL.butter)
        case "sugar":
            url = NSURL(string: webpageURL.sugar)
        case "yeast":
            url = NSURL(string: webpageURL.yeast)
        case "rice":
            url = NSURL(string: webpageURL.rice)
        case "rolled oats":
            url = NSURL(string: webpageURL.rolled_oats)
        case "yogurt":
            url = NSURL(string: webpageURL.yogurt)
        default:
            url = NSURL(string: webpageURL.home)
        }
        
        request = NSURLRequest(URL: url!)
    }
    
}