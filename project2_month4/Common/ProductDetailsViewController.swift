

import UIKit

class ProductDetailsViewController: UIViewController {

    private let productImg = UIImageView()
    private let productNameLBL = MakerView.shared.makeLabel(textColor: .black, textAlignment: .left, font: .systemFont(ofSize: 22), numberOfLines: 2)
    
    private let starsStack: UIStackView={
        let starsStack = UIStackView()
        
        starsStack.spacing = -3
        starsStack.distribution = .equalSpacing
        
        return starsStack
    }()
    
    private let stars = [UIImageView(image: UIImage(systemName: "star.fill")), UIImageView(image: UIImage(systemName: "star.fill")), UIImageView(image: UIImage(systemName: "star.fill")), UIImageView(image: UIImage(systemName: "star.fill")), UIImageView(image: UIImage(systemName: "star.fill"))]
    
    private let price = MakerView.shared.makeLabel(textColor: Color.blue, font: .systemFont(ofSize: 20))
    
    private let amount = MakerView.shared.makeLabel(text: "1", textColor: .black, textAlignment: .center, font: .systemFont(ofSize: 20))
    
    private let plusBtn = MakerView.shared.makeButton(image: UIImage(named: "plus"), tintColor: .placeholderText
    )
    private let minusBtn = MakerView.shared.makeButton(image: UIImage(named: "minus"), tintColor: .placeholderText)
    
    private let detailsLBL = MakerView.shared.makeLabel(text:"Product Details", textColor: .black, font: .systemFont(ofSize: 20))
    
    private let detailsTitle = MakerView.shared.makeLabel(text: "Dimention\n\n Material\n\n Weight\n\n Room Type\n\n Color", textColor: .lightGray, textAlignment: .left, font: .systemFont(ofSize: 15))
    
    private let detailsText = MakerView.shared.makeLabel(text: "", textColor: .darkGray, textAlignment: .left, font: .systemFont(ofSize: 15))
    
    private let buyBtn = MakerView.shared.makeButton(titleColor: .white, font: .systemFont(ofSize: 17), title: "Buy", cornerRadius: 10, backgroundColor: Color.blue)
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        super.viewDidLoad()
        
        
        customNavigationBar()
        initUI()
    }
    
    private func initUI(){
        productImgConfig()
        productNameLBLConfig()
        
        starsStackConfig()
        
        priceConfig()
        
        minusBtnConfig()
        amountConfig()
        plusBtnConfig()
        
        detailsLBLConfig()
        featureLBLConfig()
        featureTextConfig()
        buyBtnConfig()

    }
    
    private func productImgConfig(){
        view.addSubview(productImg)
        
        productImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productImg.topAnchor.constraint(equalTo: view.topAnchor),
            productImg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            productImg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            productImg.heightAnchor.constraint(equalTo: productImg.widthAnchor, constant: -177)
        ])
    }
    
    private func productNameLBLConfig(){
        view.addSubview(productNameLBL)
        productNameLBL.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productNameLBL.topAnchor.constraint(equalTo: productImg.bottomAnchor, constant: 15),
            productNameLBL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            productNameLBL.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            productNameLBL.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func starsStackConfig(){
        view.addSubview(starsStack)
        
        starsStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            starsStack.topAnchor.constraint(equalTo: productNameLBL.bottomAnchor, constant: 6),
            starsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12)
        ])
        
        for star in stars {
            star.heightAnchor.constraint(equalToConstant: 18).isActive = true
            star.widthAnchor.constraint(equalToConstant: 18).isActive = true
            star.tintColor = Color.star
            starsStack.addArrangedSubview(star)
        }
    }
    
    private func priceConfig(){
        view.addSubview(price)
        
        price.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            price.topAnchor.constraint(equalTo: starsStack.bottomAnchor, constant: 19),
            price.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    
    }
    
    
    private func minusBtnConfig(){
        view.addSubview(minusBtn)
        
        minusBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            minusBtn.topAnchor.constraint(equalTo: starsStack.bottomAnchor, constant: 17),
            minusBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            minusBtn.widthAnchor.constraint(equalToConstant: 32),
            minusBtn.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    private func amountConfig(){
        
        view.addSubview(amount)
        
        amount.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            amount.centerYAnchor.constraint(equalTo: minusBtn.centerYAnchor),
            amount.trailingAnchor.constraint(equalTo: minusBtn.leadingAnchor),
            amount.widthAnchor.constraint(equalToConstant: 51),
            amount.heightAnchor.constraint(equalToConstant: 24)
        ])
        
    }
    
    private func plusBtnConfig(){
        view.addSubview(plusBtn)
        
        plusBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            plusBtn.topAnchor.constraint(equalTo: minusBtn.topAnchor),
            plusBtn.trailingAnchor.constraint(equalTo: amount.leadingAnchor),
            plusBtn.widthAnchor.constraint(equalToConstant: 32),
            plusBtn.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    private func detailsLBLConfig(){
        view.addSubview(detailsLBL)
        
        detailsLBL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailsLBL.topAnchor.constraint(equalTo: price.bottomAnchor, constant: 27),
            
            detailsLBL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            detailsLBL.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    private func buyBtnConfig(){
        view.addSubview(buyBtn)
        
        buyBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buyBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            buyBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buyBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            buyBtn.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    private func featureLBLConfig(){
        view.addSubview(detailsTitle)
        
        detailsTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailsTitle.topAnchor.constraint(equalTo: detailsLBL.bottomAnchor, constant: 9),
            detailsTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
    }
    
    private func featureTextConfig(){
        view.addSubview(detailsText)
        
        detailsText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailsText.topAnchor.constraint(equalTo: detailsTitle.topAnchor),
            detailsText.leadingAnchor.constraint(equalTo: detailsTitle.trailingAnchor, constant: 18)
//            detailsText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
    private func customNavigationBar(){
        
        let customBackButton = customBtns(img: UIImage(named: "backBtn"), selector: #selector(backButtonPressed))
        self.navigationItem.leftBarButtonItem = customBackButton
        
        
        let customDownloadButton = customBtns(img: UIImage(named: "downloadBtn"), selector: #selector(dowloadButtonPressed))
        let customLikeButton = customBtns(img: UIImage(named: "likeBtn"), selector: #selector(likeButtonPressed))
        
        self.navigationItem.rightBarButtonItems = [customLikeButton, customDownloadButton]
    }
    
    
    
    private func customBtns(img: UIImage?, selector: Selector) -> UIBarButtonItem{
        let button = UIButton(type: .custom)
        button.setImage(img, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let customButton = UIBarButtonItem(customView: button)
        
        return customButton
        
    }
    @objc func backButtonPressed() {
        
        navigationController?.popViewController(animated: true)
    }
    
    @objc func dowloadButtonPressed(){
        
    }
    @objc func likeButtonPressed(){
        
    }
    
    func getData(product: Product) {
        productImg.image = UIImage(named: product.image)
        productNameLBL.text = product.name
        price.text = product.price
        for  feature in product.feature{
            detailsText.text! += "\(feature)\n\n"
        }
    }
    
    
}
