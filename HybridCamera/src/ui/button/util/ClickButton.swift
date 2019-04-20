import UIKit
import HybridCamLib

open class ClickButton: RoundButton, ClickButtonKind{
   public var onClick: OnClick = defaultOnClick
   override init(frame: CGRect) {
      super.init(frame: frame)
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable)
   required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Interaction
 */
extension ClickButton{
   /**
    * This is fired then the user presses the button
    */
   override open func buttonTouched(sender: UIButton) {
      onClick()
   }
}