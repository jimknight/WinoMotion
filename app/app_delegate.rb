class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    scanner_controller = ScannerViewController.alloc.init
    sign_in_controller = SignInController.alloc.init
    sign_up_controller = SignUpController.alloc.init

    nav_controller = UINavigationController.alloc.initWithRootViewController(scanner_controller)
    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [nav_controller, sign_in_controller, sign_up_controller]

    @window.rootViewController = tab_controller
    true
    
  end
end


