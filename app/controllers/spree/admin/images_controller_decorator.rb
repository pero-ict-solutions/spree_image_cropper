Spree::Admin::ImagesController.class_eval do
  def crop
	 @product_dimension = Spree::Image.attachment_definitions[:attachment][:styles][:product].split("x").map(&:to_i)
  end
end
