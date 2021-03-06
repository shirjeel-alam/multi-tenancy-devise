# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
	config.error_notification_class = 'alert alert-danger'
	config.button_class = 'btn btn-primary'
	config.boolean_label_class = nil

	config.wrappers :vertical_form, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.use :placeholder
		b.optional :maxlength
		b.optional :pattern
		b.optional :min_max
		b.optional :readonly
		b.use :label, class: 'control-label'

		b.use :input, class: 'form-control'
		b.use :error, wrap_with: { tag: 'span', class: 'help-block' }
		b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
	end

	config.wrappers :vertical_file_input, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.use :placeholder
		b.optional :maxlength
		b.optional :readonly
		b.use :label, class: 'control-label'

		b.use :input
		b.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
		b.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
	end

	config.wrappers :vertical_boolean, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.optional :readonly

		b.wrapper tag: 'div', class: 'checkbox' do |ba|
			ba.use :label_input
		end

		b.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
		b.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
	end

	config.wrappers :vertical_radio_and_checkboxes, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.optional :readonly
		b.use :label, class: 'control-label'
		b.use :input
		b.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
		b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
	end

	config.wrappers :horizontal_form, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.use :placeholder
		b.optional :maxlength
		b.optional :pattern
		b.optional :min_max
		b.optional :readonly
		b.use :label, class: 'col-sm-3 control-label'

		b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
			ba.use :input, class: 'form-control'
			ba.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
			ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
		end
	end

	config.wrappers :horizontal_file_input, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.use :placeholder
		b.optional :maxlength
		b.optional :readonly
		b.use :label, class: 'col-sm-3 control-label'

		b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
			ba.use :input
			ba.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
			ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
		end
	end

	config.wrappers :horizontal_boolean, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.optional :readonly

		b.wrapper tag: 'div', class: 'col-sm-offset-3 col-sm-9' do |wr|
			wr.wrapper tag: 'div', class: 'checkbox' do |ba|
				ba.use :label_input, class: 'col-sm-9'
			end

			wr.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
			wr.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
		end
	end

	config.wrappers :horizontal_radio_and_checkboxes, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.optional :readonly

		b.use :label, class: 'col-sm-3 control-label'

		b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
			ba.use :input
			ba.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
			ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
		end
	end

	config.wrappers :inline_form, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
		b.use :html5
		b.use :placeholder
		b.optional :maxlength
		b.optional :pattern
		b.optional :min_max
		b.optional :readonly
		b.use :label, class: 'sr-only'

		b.use :input, class: 'form-control'
		b.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
		b.use :hint,  wrap_with: { tag: 'p', class: 'help-block has-warning' }
	end

	# Wrappers for forms and inputs using the Bootstrap toolkit.
	# Check the Bootstrap docs (http://getbootstrap.com)
	# to learn about the different styles for forms and inputs,
	# buttons and other elements.
	# config.default_wrapper = :vertical_form
	config.default_wrapper = :horizontal_form
	config.wrapper_mappings = {
		check_boxes: :vertical_radio_and_checkboxes,
		radio_buttons: :vertical_radio_and_checkboxes,
		file: :vertical_file_input,
		boolean: :vertical_boolean,
	}
end

# wrapper: :horizontal_form,
#   wrapper_mappings: {
#     check_boxes: :horizontal_radio_and_checkboxes,
#     radio_buttons: :horizontal_radio_and_checkboxes,
#     file: :horizontal_file_input,
#     boolean: :horizontal_boolean
#   }

# #It should be used like this:
# # html: {class: 'form-horizontal multiple_tags', role: 'form'}, defaults: { label_html: { class: 'col-lg-2' }, input_html: { class: 'form-control'} } do |form|

# # Use this setup block to configure all options available in SimpleForm.
# SimpleForm.setup do |config|
#   config.wrappers :bootstrap, tag: 'div', class: 'form-group', error_class: 'error' do |b|
#     b.use :html5
#     b.use :placeholder
#     b.use :label
#     b.wrapper tag: 'div', class: 'col-lg-6 col-xs-4 col-sm-6' do |ba|
#       ba.use :input
#       ba.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
#       ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
#     end
#   end

#   # <div class="form-group">
#   #   <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
#   #   <div class="col-sm-10">
#   #     <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
#   #   </div>
#   # </div>

#   config.wrappers :prepend, tag: 'div', class: "form-group", error_class: 'error' do |b|
#     b.use :html5
#     b.use :placeholder
#     b.use :label
#     b.wrapper tag: 'div', class: 'col-lg-6 col-xs-4 col-sm-6' do |input|
#       input.wrapper tag: 'div', class: 'input-prepend' do |prepend|
#         prepend.use :input
#       end
#       input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
#       input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
#     end
#   end

#   config.wrappers :append, tag: 'div', class: "form-group", error_class: 'error' do |b|
#     b.use :html5
#     b.use :placeholder
#     b.use :label
#     b.wrapper tag: 'div', class: 'col-lg-6 col-xs-4 col-sm-6' do |input|
#       input.wrapper tag: 'div', class: 'input-append' do |append|
#         append.use :input
#       end
#       input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
#       input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
#     end
#   end

#   # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
#   # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
#   # to learn about the different styles for forms and inputs,
#   # buttons and other elements.
#   config.default_wrapper = :bootstrap
# end