import UIKit

class MakerView {
    
    static let shared = MakerView()
    
    func makeLabel(text: String = "",
                   textColor: UIColor = .white,
                   textAlignment: NSTextAlignment = .center,
                   font: UIFont = .systemFont(ofSize: 12, weight: .regular),
                   borderWidth: CGFloat = 0,
                   borderColor: UIColor = .black,
                   cornerRadius: CGFloat = 0,
                   numberOfLines: Int = 0,
                   lineBreakMode: NSLineBreakMode = .byCharWrapping,
                   shadowColor: UIColor = .clear,
                   shadowOffset: CGSize = CGSize(width: 0, height: 0),
                   opacity: Float = 1,
                   iShidden: Bool = false
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.font = font
        label.layer.borderWidth = borderWidth
        label.layer.borderColor = borderColor.cgColor
        label.layer.cornerRadius = cornerRadius
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.shadowColor = shadowColor
        label.shadowOffset = shadowOffset
        label.layer.opacity = opacity
        label.isHidden = iShidden
        return label
    }
    
   
    func makeButton(
                    titleColor: UIColor = .white,
                    font: UIFont = .systemFont(ofSize: 12, weight: .regular),
                    image: UIImage? = nil,
                    title: String = "",
                    cornerRadius: CGFloat = 0,
                    backgroundColor: UIColor = .clear,
                    tintColor: UIColor = .white,
                    borderWidth: CGFloat = 0,
                    borderColor: UIColor = .black
    ) -> UIButton {
        let button = UIButton()
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        if let image = image{
            button.setImage(image, for: .normal)
        }
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = backgroundColor
        button.tintColor = tintColor
        button.layer.borderWidth = borderWidth
        button.layer.borderColor = borderColor.cgColor
        
        return button
    }
    
}
