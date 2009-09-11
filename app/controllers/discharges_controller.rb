class DischargesController < ApplicationController
def index
   @patients =Admission.leaving(1)
    if @patients.empty?
            flash[:notice] = 'No discharges planned for today.'
            redirect_to(wards_url)
      end
 end
end
  
