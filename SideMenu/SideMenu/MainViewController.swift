
import UIKit
import SlideMenuControllerSwift

class MainViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.addLeftBarButtonWithImage(#imageLiteral(resourceName: "ic_menu_black_24dp"))
  }
  
  public func abc() {
    slideMenuController()?.toggleLeft()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension MainViewController: SlideMenuControllerDelegate {
  func leftWillOpen() {
  
  }
  
  func leftDidOpen() {
  
  }
  
  func leftWillClose() {
  
  }
  
  func leftDidClose() {
  
  }
  
  func rightWillOpen() {
  
  }
  
  func rightDidOpen() {
  
  }
  
  func rightWillClose() {
  
  }
  
  func rightDidClose() {
  
  }
}


