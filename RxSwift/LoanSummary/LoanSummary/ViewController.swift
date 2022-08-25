import UIKit
class ViewController: UIViewController {

    private let scrollView = UIScrollView()
    private var contentView = UIView()
    //let contentView = ConsumerDurableContentView()
    private let dataSource = LoanSummaryDataSource()
        
    func setupContentView(type: ContentViewType) {
        
        switch type {
        case .PersonalLoan:
            contentView = PersonalLoanContentView()
        
        case .ConsumerDurable:
            contentView = ConsumerDurableContentView()
        }
        
    }
    
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
        self.view.backgroundColor = .blue
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
        
        
        //Load data base on content
        switch contentView {
            
        case is ConsumerDurableContentView:
           
            guard let contentView = contentView as? ConsumerDurableContentView else {
                return
            }
            contentView.loadData()
            
            
        case is PersonalLoanContentView:
            
            guard let contentView = (contentView as? PersonalLoanContentView) else {
                return
        
            }
            contentView.loadData()
            
        default:
            return
            
        }
        
        print("loaded")
        
    }
   
}
