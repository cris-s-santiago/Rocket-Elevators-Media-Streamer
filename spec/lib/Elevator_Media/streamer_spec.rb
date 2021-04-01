require 'Elevator_Media/streamer.rb'
require 'rails_helper'

describe ElevatorMedia::Streamer do

    let!(:streamer){ElevatorMedia::Streamer.new}
    let!(:saopaulo){"3448439"}

    context "Create an streamer object" do
        it "Should successfuly create an streamer object" do
            expect(streamer).to be_an_instance_of(ElevatorMedia::Streamer)    
        end
    end

    context "Check getContent" do
        it "Check if the method getContent exists" do
            expect(streamer).to respond_to(:getContent)        
        end
    end

    context "Check a string" do
        it "Check if the return of the methode is string" do
            html = streamer.getContent(saopaulo)
            expect(html).to be_a(String)
        end
    end

    context "Return html" do
        it "Should return valid HTML" do
            html = streamer.getContent(saopaulo)
            expect(html).to include('div')
        end
    end
end