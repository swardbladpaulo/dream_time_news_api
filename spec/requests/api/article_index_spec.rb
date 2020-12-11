RSpec.describe "GET /api/articles", type: :request do
  let!(:articles){5.times{create(:article)}}

  describe "GET /api/articles" do
    before do
      get "/api/articles"
    end

    it "is expected to return 200 status" do
      expect(response).to have_http_status 200
    end

    it "is expected to return a collection of articles" do
      expect(response_json.count).to eq 5
    end
  end
end