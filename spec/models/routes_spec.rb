require "rails_helper"

RSpec.describe "Routes", :type => :routing do
    
    context "Check route home page" do
        it "Should '/' route to the pages#index" do        
            expect(:get => "/").to route_to(:controller => "pages", :action=>"index")
        end
    end
    context "Check route commercial page" do
        it "Should 'commercial' route to the pages#commercial" do
            expect(:get => "commercial").to route_to(:controller => "pages", :action=>"commercial")
        end
    end
    context "Check route Watson update" do
        it "Should '/watson/update' route to the methode watson#speak" do
            expect(:get => "/watson/update").to route_to(:controller => "watson", :action=>"speak")
        end
    end
end