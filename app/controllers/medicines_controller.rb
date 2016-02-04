class MedicinesController < ApplicationController
  
  def index
    @medicines=Medicine.find(:all)
   end
   
   def new
   end
   
   def create
     @medicines=Medicine.new(params[:medicines])
       if @medicines.save
         redirect_to :action => "new"
       else
         render :action => "new"
       end
   end
  
end

