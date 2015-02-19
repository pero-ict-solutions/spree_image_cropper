require 'spec_helper'

describe 'Admin::Product::Images' do

  stub_authorization!

  before(:each) do
    @product = FactoryGirl.create(:base_product)
    visit spree.admin_product_path(@product)
    click_link 'Images'
    click_link 'New Image'
    absolute_path = Rails.root + '../../spec/fixtures/files/test_image.png'
    attach_file('image_attachment', absolute_path)
    click_button 'Update'
  end

  it 'adds a crop link for admin' do
    expect(page).to have_link('Crop')
  end

  it 'can crop image' do
    click_link 'Crop'
    expect(page).to have_selector('img#cropbox')
    click_button 'Crop'
    expect(page).to have_content('Image has been successfully updated!')
  end
end