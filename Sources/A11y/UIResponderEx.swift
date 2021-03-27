import Foundation
import UIKit

public extension UIResponder {
    
    /*
     set accessibility identifiers as views name
     
     e.g.
     class ViewController: UIViewController {
        @IBOutlet weak nameField: UITextField! //identifier as it's name, "nameField"
     
        func viewDidLoad() {
            super.viewDidLoad()
            
            generateA11yIdentifiers()
        }
     }
     */
    func generateA11yIdentifiers(_ prefix: String = "") {
        Mirror(reflecting: self)
            .children
            .forEach {
                //"accessibilityIdentifier"
                let key = #keyPath(UIView.accessibilityIdentifier)
                
                guard let object = $0.value as? NSObject,
                      let label = $0.label,
                      object.responds(to: NSSelectorFromString(key)) else {
                    return
                }
                
                object.isAccessibilityElement = true
                object.setValue(prefix + label, forKey: key)
            }
    }
}
