Deface::Override.new(virtual_path: 'spree/admin/images/index',
                     name: 'append_search_result_flag',
                     insert_bottom: "tr[data-hook='images_header']",
                     text: '<th>Overview Image</th>',
                     disabled: false)

Deface::Override.new(virtual_path: 'spree/admin/images/index',
                     name: 'append_search_result_flag_to_result',
                     insert_bottom: "tr[data-hook='images_row']",
                     erb: %q{<td><%=image.search_result_asset%>%></td>},
                     disabled: false)


Deface::Override.new(virtual_path: 'spree/admin/images/_form',
                     name: 'add_search_result_checkbox',
                     insert_bottom: "div[data-hook='admin_image_form_fields']",
                     erb: %q{
                      <td><%= t(:search_result_asset) %>:</td>
                      <td><%= f.check_box :search_result_asset %></td>},
                     disabled: false)