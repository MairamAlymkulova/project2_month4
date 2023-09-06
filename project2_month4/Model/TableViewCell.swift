

import UIKit

class TableViewCell: UITableViewCell {

    private let cellImg = UIImageView()
    
    private let cellLabel = MakerView.shared.makeLabel(textColor: .black, font: .boldSystemFont(ofSize: 20))
    
    private let cellItem = MakerView.shared.makeLabel(textColor: .gray, font: .systemFont(ofSize: 15))
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.heightAnchor.constraint(equalToConstant: 239).isActive = true
        
        contentView.addSubview(cellImg)
        
        cellImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellImg.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellImg.leadingAnchor.constraint(equalTo: contentView
                .leadingAnchor),
            cellImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cellImg.heightAnchor.constraint(equalToConstant: 166)
        ])
        
        contentView.addSubview(cellLabel)
        
        cellLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellLabel.topAnchor.constraint(equalTo: cellImg.bottomAnchor, constant: 8),
            cellLabel.leadingAnchor.constraint(equalTo: cellImg.leadingAnchor),
            cellLabel.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        
        contentView.addSubview(cellItem)
        
        cellItem.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellItem.topAnchor.constraint(equalTo: cellLabel.bottomAnchor, constant: 2),
            cellItem.leadingAnchor.constraint(equalTo: cellLabel.leadingAnchor),
            cellItem.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
    
    func setProductText(image: String, name: String, item: String){
        cellImg.image = UIImage(named: image)
        cellLabel.text = name
        cellItem.text = item
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
