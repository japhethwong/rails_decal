class PagesController < ApplicationController
  def home
    end

  def about
    @major = "Electrical Engineering and Computer Science (EECS)"
    @age = 15
    @song = "Don't really have one actually, but I've been looping some soundtracks"
    end
end
