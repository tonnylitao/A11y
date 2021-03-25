import Foundation
import UIKit

extension UIAccessibilityIdentification where Self: NSObject {

    func setA11yIdentifier(_ identifier: String) {
        isAccessibilityElement = true
        accessibilityIdentifier = identifier
    }
}
