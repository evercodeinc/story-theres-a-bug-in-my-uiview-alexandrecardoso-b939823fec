import UIKit

final class LoadingView: UIView {
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
      
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func startAnimating() {
        activityIndicatorView.startAnimating()
    }

}
