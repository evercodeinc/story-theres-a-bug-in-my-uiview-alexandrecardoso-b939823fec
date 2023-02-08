import UIKit

final class LoadingView: UIView {
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
      
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var descriptionLabel: UILabel = {
      
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Loading…"
        label.font = .systemFont(ofSize: 21, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        addSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(activityIndicatorView)
        addSubview(descriptionLabel)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            descriptionLabel.bottomAnchor.constraint(equalTo: activityIndicatorView.topAnchor, constant: -16),
            descriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func startAnimating() {
        activityIndicatorView.startAnimating()
    }

}
