class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
        @scannerViewController = ScannerViewController.alloc.init
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@scannerViewController)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
    # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    # @navigation_controller = UINavigationController.alloc.initWithRootViewController(UserController.controller)
    # @window.rootViewController = @navigation_controller
    # @window.makeKeyAndVisible

    # @login = LoginController.alloc.init
    # @login_navigation = UINavigationController.alloc.initWithRootViewController(@login)

    # UserController.controller.presentModalViewController(@login_navigation, animated:false)

    # true
  end
end