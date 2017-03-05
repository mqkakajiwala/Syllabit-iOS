//
//  UIFont.swift
//  Sylabilt
//
//  Created by Muzamil Hassan on 2/28/17.
//  Copyright © 2017 Sobia. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    private struct SharedFonts
    {
        static let kFontNameRegularSourceSteelFish = "SteelfishRg-Regular"
        static let kFontNameItalicSourceSteelFish = "SteelfishRg-Italic"
        static let kFontNameOutlineSourceSteelFish = "SteelfishOutline-Regular"
    }

    public class func completeItemTextFontWithRegular(size:CGFloat) -> UIFont
    {
        return  UIFont(name: SharedFonts.kFontNameRegularSourceSteelFish, size: size)!
    }
    public class func completeItemTextFontWithItalic(size:CGFloat) -> UIFont
    {
        return  UIFont(name: SharedFonts.kFontNameItalicSourceSteelFish, size: size)!
    }
    public class func completeItemTextFontWithOutline(size:CGFloat) -> UIFont
    {
        return  UIFont(name: SharedFonts.kFontNameOutlineSourceSteelFish, size: size)!
    }
}
