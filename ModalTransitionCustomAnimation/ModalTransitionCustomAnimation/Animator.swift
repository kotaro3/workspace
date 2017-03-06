//
//  Animator.swift
//  ModalTransitionCustomAnimation
//
//  Created by kotaro on 2017/03/04.
//  Copyright © 2017年 kotaro. All rights reserved.
//

import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1.0
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        // 遷移元
        let fromVC = transitionContext.viewController(forKey: .from)
        // 遷移先
        let toVC = transitionContext.viewController(forKey: .to)
        let containerView = transitionContext.containerView
        guard let toView = toVC?.view, let fromView = fromVC?.view else {
            return
        }
        let centerX = fromView.center.x
        let centerY = fromView.center.y
        let fromViewFrame = fromView.frame
        let toViewFrame = toView.frame
        
        toView.frame.size = CGSize.init(width: 0.0, height: 0.0)
        
        containerView.insertSubview(toView, belowSubview: fromView)
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            toView.frame = fromViewFrame
//            fromView.alpha = 0.0

        }) { (_) in
//            toView.frame = toViewFrame
//            fromView.frame = fromViewFrame
//            fromView.alpha = 1.0
            transitionContext.completeTransition(true)
        }
    }
}
