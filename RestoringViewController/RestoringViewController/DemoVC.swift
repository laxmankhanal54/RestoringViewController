
import UIKit

class DemoVC: UIViewController {
  
  var text = ""
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    textField.delegate = self
  }
  
  override func encodeRestorableState(with coder: NSCoder) {
    coder.encode(text, forKey: "text")
    super.encodeRestorableState(with: coder)
  }
  
  override func decodeRestorableState(with coder: NSCoder) {
    text = coder.decodeObject(forKey: "text") as! String
    super.decodeRestorableState(with: coder)
  }
  
  override func applicationFinishedRestoringState() {
    label.text = text
    textField.text = text
  }

}

extension DemoVC: UITextFieldDelegate {
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    text = textField.text! + string
    label.text = text
    return true
  }
}
