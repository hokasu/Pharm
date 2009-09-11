class DischargesController < ApplicationController
  before_filter :login_required
def index
   @patients =Admission.leaving(1)
    if @patients.empty?
            flash[:notice] = 'No discharges planned for today.'
            redirect_to(wards_url) and return
    else
  render :template => 'patients/index'
    end
 end
end
  
