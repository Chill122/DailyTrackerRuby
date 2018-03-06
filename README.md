# DailyTrackerRuby

//LOGIN AND DATABASE (devise and all the listed items below)
Install devise

rails g scaffold name:string description:text
rails g migration add_counter_to_tracker counter:integer
rails g migration add_check_date_to_tracker date_check:datetime
rails g migration add_user_to_tracker

//DONE BUTTON (When you click it it goes to def count)
<% if tracker.date_check != Date.today %>
       <%= link_to 'Done', count_tracker_path(tracker), { :style=>'color:#FFFFFF;', :class => 'btn btn-success' } %>
<% end %>

//COUNTER (adds +1 to the counter and saves todays date to tracker.date_check)
  def count
    tracker = Tracker.find(params[:id])
    tracker.counter +=1
    tracker.date_check = Date.today
    tracker.save

    redirect_to root_path
  end
  
  //PERMISSION (only the user that created the track can see and edit it)
before_action :require_permission, only: [:show, :edit]
  def require_permission
    if current_user != Tracker.find(params[:id]).user
        redirect_to root_path
    end
  end
  
  //INDEX (Shows only the trackers that you created)
  def index
    @trackers = Tracker.where(user_id: current_user.id)
  end
  
  //CREATING (Build the track with current_user)
  def new
    @tracker = current_user.trackers.build
  end
  
  def create
    @tracker = current_user.trackers.build(tracker_params)
    .
    .
    .
  end
  
  //EXTRA VALIDATIONS (Restricts length that the user can enter for tracker's name and description)
  validates_length_of :Name, :minimum => 3, :maximum => 50, :allow_blank => false
  validates_length_of :description, :maximum => 150
  
  CSS AND LOOKS (bootstrap)
  
  ADDED BUTTONS FOR FUNCTIONALITY
