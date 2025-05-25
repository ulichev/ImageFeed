import UIKit

// MARK: - Extensions

extension ImagesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // пока пусто
    }
}

extension ImagesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)
        
        guard let imageListCell = cell as? ImagesListCell else {
            return UITableViewCell()
        }
        
        configCell(for: imageListCell)
        return imageListCell
    }
}

// MARK: - Class

class ImagesListViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200

    }
    
// MARK: - Methods
    
    func configCell(for cell: ImagesListCell) {
        cell.cellImageView.image = UIImage(named: "0")
        cell.dateLabel.text = "27 апреля 2022"
        let likeImage = UIImage(named: "No active")
        cell.likeButton.setImage(likeImage, for: .normal)
    }
}

