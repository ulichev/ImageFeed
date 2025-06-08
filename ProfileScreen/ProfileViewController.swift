import UIKit

class ProfileViewController: UIViewController {
    
//MARK: - UI Elements
    
    private let profileImageView = UIImageView()
    private let nameLabelView = UILabel()
    private let accountLabelView = UILabel()
    private let descriptionLabelView = UILabel()
    private let logoutButton = UIButton(type: .system)
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundColor")
        
        setupViews()
        addSubviews()
        setupConstraints()
    }
    
//MARK: - Setup
    
    private func setupViews() {

        profileImageView.image = UIImage(named: "UserPic")
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = 35
        profileImageView.clipsToBounds = true
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabelView.text = "Екатерина Новикова"
        nameLabelView.textColor = .white
        nameLabelView.font = UIFont.boldSystemFont(ofSize: 23)
        nameLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        accountLabelView.text = "@ekaterina_nov"
        accountLabelView.textColor = UIColor(named: "Grey")
        accountLabelView.font = UIFont.systemFont(ofSize: 13)
        accountLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabelView.text = "Hello,world!"
        descriptionLabelView.textColor = .white
        descriptionLabelView.font = UIFont.systemFont(ofSize: 13)
        descriptionLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        logoutButton.setImage(UIImage(systemName: "ipad.and.arrow.forward"), for: .normal)
        logoutButton.tintColor = UIColor(named: "LightRed")
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addSubviews() {
        view.addSubview(profileImageView)
        view.addSubview(nameLabelView)
        view.addSubview(accountLabelView)
        view.addSubview(descriptionLabelView)
        view.addSubview(logoutButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabelView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            nameLabelView.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            
            accountLabelView.topAnchor.constraint(equalTo: nameLabelView.bottomAnchor, constant: 8),
            accountLabelView.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            
            descriptionLabelView.topAnchor.constraint(equalTo: accountLabelView.bottomAnchor, constant: 8),
            descriptionLabelView.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            
            logoutButton.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}
