
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        as! TableViewCell
        
        let image = products[indexPath.row].image
        let name = products[indexPath.row].name
        let item = products[indexPath.row].items
        
        cell.setProductText(image: image, name: name, item: item)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ProductDetailsViewController()
        vc.getData(product: products[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

