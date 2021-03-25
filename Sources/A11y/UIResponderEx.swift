import Foundation
import UIKit

extension UIResponder {
    
    /*
     set accessibility identifiers as views name
     
     e.g.
     class ViewController: UIViewController {
        @IBOutlet weak nameField: UITextField! //identifier as it's name, "nameField"
     
        func viewDidLoad() {
            super.viewDidLoad()
            
            setA11yIdentifiers()
        }
     }
     */
    func setA11yIdentifiers(_ prefix: String = "") {
        Mirror(reflecting: self)
            .children
            .forEach {
                guard let label = $0.label else {
                    return
                }
                
                let view = $0.value
                let identifier = prefix + label
                
                (view as? NSObject)?.isAccessibilityElement = true
                
                (view as? UIView)?.accessibilityIdentifier = identifier
                (view as? UIBarItem)?.accessibilityIdentifier = identifier
                (view as? UIAlertAction)?.accessibilityIdentifier = identifier
                if #available(iOS 13.0, *) {
                    (view as? UIMenuElement)?.accessibilityIdentifier = identifier
                }
            }
    }
}
