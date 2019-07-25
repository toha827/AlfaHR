import Foundation
import UIKit

extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.1 ,
        x: CGFloat = 0 / 736 * UIScreen.main.bounds.height,
        y: CGFloat = 2 / 736 * UIScreen.main.bounds.height,
        blur: CGFloat = 15,
        spread: CGFloat = 0)
    {
        masksToBounds = false
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / ( 2.0 / 736 * UIScreen.main.bounds.height)
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
    
    
}
