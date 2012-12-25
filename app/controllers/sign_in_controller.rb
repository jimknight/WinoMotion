class SignInController < UIViewController
  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Sign In', image:UIImage.imageNamed('map.png'), tag:1)
    end
    self
  end
end