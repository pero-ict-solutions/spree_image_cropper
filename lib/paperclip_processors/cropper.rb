module Paperclip
  class Cropper < Thumbnail
    def transformation_command

      spr_cmd = super
      spr_cmd = spr_cmd.join(" ") if spr_cmd

      return super if spr_cmd.present? and spr_cmd.include?(Spree::Image.attachment_definitions[:attachment][:styles][:crop])
      if crop_command
        crop_command + super.join(" ").sub(/ -crop \S+/, '')
      else
        super
      end
    end

    def crop_command
      target = @attachment.instance
      if target.cropping?
        " -crop #{target.crop_w.to_i}x#{target.crop_h.to_i}+#{target.crop_x.to_i}+#{target.crop_y.to_i} "
      end
    end
  end
end
