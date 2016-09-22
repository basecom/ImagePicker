import Foundation
import UIKit

open class AssetManager {

  open static func getImage(_ name: String) -> UIImage {
    let traitCollection = UITraitCollection(displayScale: 3)
    var bundle = Bundle(for: AssetManager.self)
    let bundlePath = (bundle.resourcePath)! + "/ImagePicker.bundle"
    
    if let resourceBundle = Bundle(path: bundlePath) {
      bundle = resourceBundle
    }

    return UIImage(named: name, in: bundle, compatibleWith: traitCollection) ?? UIImage()
  }
}
