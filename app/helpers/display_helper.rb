module DisplayHelper

  # Overrides original method from facets_helper_behavior.rb
  # -- Replace icon-remove (glyphicon) with appropriate Font Awesome classes: fa and fa-times
  # Standard display of a SELECTED facet value, no link, special span
  # with class, and 'remove' button.


def render_collection_title
	if params[:action] == "show" && render_document_show_field_value(:document => @document, :field => 'collection_tesim').present?
	return ": "+ strip_links(render_document_show_field_value(:document => @document, :field => 'collection_tesim'))
end
end

end
