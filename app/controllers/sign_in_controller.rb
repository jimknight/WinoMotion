class SignInController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Sign In', image:UIImage.imageNamed('user.png'), tag:1)
    end
    self
  end
end