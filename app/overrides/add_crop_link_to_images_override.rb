Deface::Override.new(virtual_path: 'spree/admin/images/index',
                     name: 'append_crop_link',
                     insert_bottom: 'td.actions',
                     erb: %q{<%= link_to_with_icon 'crop', t(:crop), crop_admin_product_image_url(@product, image)%>},
                     disabled: false)
