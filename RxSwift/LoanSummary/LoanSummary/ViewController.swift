import UIKit
class ViewController: UIViewController {

    let scrollView = UIScrollView()
    let contentView = LoanSummaryContentView()
    let dataSource = LoanSummaryDataSource()
        
    func addSubViews() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
    }
    
    func addLayout() {
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),

            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
        ])
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        self.view.backgroundColor = .white
        dataSource.setupDelegate(vc: self)
        dataSource.fetchData()
        addSubViews()
        addLayout()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = "Loan Summary"
    }
  
    func loadData() {
        
        contentView.loadData()
        print("loaded")
        
    }
   
}
