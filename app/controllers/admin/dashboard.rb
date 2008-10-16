module Admin
  class Dashboard < Base
    # skip_before :ensure_authenticated
    # before :check_for_user
    
    def index
      @activity = Activity.all(:order => [:created_at.desc], :limit => 5)
      display @activity
    end
    
    # private
      ##
      # This checks to see if there are no users (such as when it's a fresh install) - if so, it creates a default user and redirects the user to login with those details
    #  def check_for_user
    #    if User.count == 0
          #User.create({:login => "admin", :password => "password", :password_confirmation => "password", :name => 'blog owner', :email => "none@none", :time_zone => "Europe/London"})
          # Display the newly created users details
    #      notify "No users found, so please create the default user."
    #    end
    #    ensure_authenticated
    #  end
  end
end
