Spree::Image.class_eval do
  require 'paperclip_processors/cropper'

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  after_update :reprocess_attachment, :if => :cropping?

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  def attachment_geometry(style = :original)
    @geometry ||= {}
    attachment_path = (attachment.options[:storage] == :s3) ? attachment.url(style) : attachment.path(style)
    @geometry[style] ||= Paperclip::Geometry.from_file(attachment_path)
  end

  private
  def reprocess_attachment
    attachment.assign(attachment)
    attachment.save
  end

end
