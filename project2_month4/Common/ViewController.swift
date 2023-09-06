
import UIKit



class ViewController: UIViewController {
    let cellID = "cell"
    var products: [Product] = []


    private let tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initUI()
        initData()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellID)
        
            
    }

    private func initUI(){
        TVconfig()
    }
    
    private func TVconfig(){
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17)
        ])
          
    }
    
    private func initData(){
        
        products = [Product(name: "Furniture", image: "furniture", items: "785 Items", price: "$230",
                            feature: [
                                "Office, Living Room",
                                "Grey",
                                "Textile",
                                "100 x 32 X 38",
                                "81 Pounds"
                            ]),
                    Product(name: "Kitchenware", image: "kitchen", items: "645 Items", price: "$350",
                            feature: [
                                "Kitchen",
                                "White",
                                "Wood",
                                "200 x 40 X 100",
                                "160 Pounds"
                            ]),
                    Product(name: "Reading Table", image: "readingTable", items: "Inventory", price: "$180",
                            feature: [
                                "Office, Living Room",
                                "Brown",
                                "Wood",
                                "130 x 110 X 100",
                                "60 Pounds"
                            
                            ])]
    }
    

}



