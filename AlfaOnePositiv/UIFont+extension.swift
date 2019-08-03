//
//  UIFont+extension.swift
//  AlfaOnePositiv
//
//  Created by санжар on 26.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
extension UIFont{
    //
    static func Helvetica(_ size: CGFloat) -> UIFont { return UIFont(name: "Helvetica", size: size)! }
    
    // Montserrat Family
    static func MontserratBlack(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Black", size: size)! }
    static func MontserratBlackItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-BlackItalic", size: size)! }
    static func MontserratLightItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-LightItalic", size: size)! }
    static func MontserratMedium(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Medium", size: size)! }
    static func MontserratMediumItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-MediumItalic", size: size)! }
    static func MontserratRegular(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Regular", size: size)! }
    static func MontserratSemiBold(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-SemiBold", size: size)! }
    static func MontserratThin(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Thin", size: size)! }
    static func MontserratThinItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-ThinItalic", size: size)! }
    static func MontserratBold(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Bold", size: size)! }
    static func MontserratBoldItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-BoldItalic", size: size)! }
    static func MontserratExtraBold(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-ExtraBold", size: size)! }
    static func MontserratExtraLight(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-ExtraLight", size: size)! }
    static func MontserratExtraLightItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-ExtraLightItalic", size: size)! }
    static func MontserratItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Italic", size: size)! }
    static func MontserratLight(_ size: CGFloat) -> UIFont { return UIFont(name: "Montserrat-Light", size: size)! }
    
    // Open Sans Family
    static func OpenSansBold(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-Bold", size: size)! }
    static func OpenSansBoldItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-BoldItalic", size: size)! }
    static func OpenSansExtraBold(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-Extrabold", size: size)! }
    static func OpenSansExtraBoldItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-ExtraboldItalic", size: size)! }
    static func OpenSansItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-Italic", size: size)! }
    static func OpenSansLight(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-Light", size: size)! }
    static func OpenSansLightItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSansLight-Italic", size: size)! }
    static func OpenSansRegular(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans", size: size)! }
    static func OpenSansSemibold(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-Semibold", size: size)! }
    static func OpenSansSemiboldItalic(_ size: CGFloat) -> UIFont { return UIFont(name: "OpenSans-SemiboldItalic", size: size)! }
    
    // App specific font selection
    static func extraLightFont(_ size: CGFloat) -> UIFont { return UIFont.MontserratExtraLight(size) }
    static func lightFont(_ size: CGFloat) -> UIFont { return UIFont.OpenSansLight(size) }
    static func regularFont(_ size: CGFloat) -> UIFont { return UIFont.OpenSansRegular(size) }
    static func mediumFont(_ size: CGFloat) -> UIFont { return UIFont.OpenSansRegular(size + 1) }
    static func semiBoldFont(_ size: CGFloat) -> UIFont { return UIFont.OpenSansSemibold(size) }
    static func boldFont(_ size: CGFloat) -> UIFont { return UIFont.OpenSansBold(size) }
    static func extraBoldFont(_ size: CGFloat) -> UIFont { return UIFont.OpenSansExtraBold(size) }
    
    static func headerFont(_ size: CGFloat) -> UIFont { return UIFont.MontserratLight(size) }
}
