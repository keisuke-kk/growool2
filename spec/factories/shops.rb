FactoryBot.define do
  
  factory :shop do
    name               {"Doutol"}
    detail             {"aaaaaaaaaaaaaa"}
    aicon_image        { Rack::Test::UploadedFile.new("./spec/fixtures/kitchen.jpg", "image/jpeg") }
    tel                {"000-000-0000"}
    address            {"bbbbbbbbbbbb"}
    url                {"cccccccccccc"}
  end

end
