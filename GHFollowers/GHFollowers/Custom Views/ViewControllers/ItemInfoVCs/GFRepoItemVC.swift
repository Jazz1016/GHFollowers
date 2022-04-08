//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by James Lea on 3/23/22.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGithubProfile(for user: User)
    func didTapGithubFollower(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems(){
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGithubProfile(for: user)
    }
    
}//End of Class
