require 'rails_helper'

RSpec.describe QuotesController, :type => :controller do

    describe "GET index" do
        it "has a 200 status code" do
            get :index
            expect(response.status).to eq(200)
        end
    end

    describe "GET index" do
        it "has a text/html" do
            get :index
            expect(response.content_type).to eq "text/html"
        end
    end

    let!(:quote) {create(:quote)}
    describe "Post Create" do
        context "Given valid params" do
            it "Creste a new quote request" do 
                
                valid_params = {
                    buildType: quote.building_type,
                    radiobtn: quote.product_line,
                    floors_residential: quote.num_of_floors,
                    apartmentsresidential: quote.num_of_apartments,
                    basementsresidential: quote.num_of_basements,
                   }

                post :create, params: valid_params

                expect(Quote.last.building_type).to eq(valid_params[:buildType])
                expect(Quote.last.num_of_floors).to eq(valid_params[:floors_residential])
            end
        end
    end
end