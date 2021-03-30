require 'Elevator_Media/streamer.rb'
require 'rails_helper'

describe ElevatorMedia::Streamer do

    let!(:streamer){ElevatorMedia::Streamer.new}
    let!(:saopaulo){"3448439"}
    
    context "First Test" do
        it "should return true: First test" do
            expect(true).to be true        
        end
    end
    # Test the Streamer Class and instanciation
    context "generate streamer object" do
        it "get new streamer object" do
            expect(streamer).to be_an_instance_of(ElevatorMedia::Streamer)    
        end
    end
    #Test the response of the method getContent 
    context "getContent Test" do
        it "getContent does she work ?" do
            expect(streamer).to respond_to(:getContent)        
        end
    end
    # Test: getContent should return data
    # Test: Forecast should return data
    context "should return html: forecast" do
        it "Forecast should return valid HTML" do
            html = streamer.getContent(saopaulo) 
            puts html
            expect(html).to include('body')
            # expect(html).to have_tag('div')
        end
    end
end