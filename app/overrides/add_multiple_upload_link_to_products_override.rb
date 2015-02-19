Deface::Override.new(virtual_path: 'spree/admin/products/_form',
                     name: 'add_multiple_upload_link',
                     insert_bottom: "div[data-hook='admin_product_form_right']",
                     erb: %q{
<fieldset>
  <legend><%= t(:multiple_image_upload) %></legend>
  <%= f.field_container :multiple_image_upload do %>
    <span>Upload multiple images here. You can edit them on the 'images' tab</span>
    <div class="field">
      <%= f.file_field :bulk_images, multiple: 'multiple' %>
    </div>
  <% end %>
</fieldset>
                      },
                     disabled: false)