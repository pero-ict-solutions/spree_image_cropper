Spree::Product.class_eval do
  attr_accessor :bulk_images
  before_save :process_bulk_images

  def process_bulk_images
    if bulk_images
      bulk_images.each do |img|
        self.images.create(attachment: img)
        # name = File.basename(img.original_filename, '.*')
        # self.images.new(:name => name, :alt => name )
      end
    end
  end
end