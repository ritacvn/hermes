import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    private var repos: [Repository] = []
    private var fetching: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuTableView()
    }
    
    func setuTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RepositoryTableViewCell.self, forCellReuseIdentifier: RepositoryTableViewCell.identifier)
        self.view.addSubview(tableView)
    }
    
    private func fetchRepositories(queryType: GithubQueryType) {
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RepositoryTableViewCell.identifier, for: indexPath) as? RepositoryTableViewCell else { return UITableViewCell() }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
}
