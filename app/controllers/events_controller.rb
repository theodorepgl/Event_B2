def index
       @events = Event.all
     end

     def show
       @event = Event.find(params[:id])
     end

     def book
       @event = Event.find(params[:id])
       current_user.events << @event
       redirect_to @event, notice: 'Event booked successfully.'
     end