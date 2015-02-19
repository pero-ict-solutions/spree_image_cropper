FactoryGirl.define do
  factory :product_image, class: Spree::Image do

    # do not use fixture_file_upload (http://pivotallabs.com/avoid-using-fixture-file-upload-with-factorygirl-and-paperclip/)
    attachment_file_name { 'test_image.png' }
    attachment_content_type { 'image/png' }
    attachment_file_size { 1024 }
  end
end