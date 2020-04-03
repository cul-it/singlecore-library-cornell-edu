module DisplayHelper

  # Overrides original method from facets_helper_behavior.rb
  # -- Replace icon-remove (glyphicon) with appropriate Font Awesome classes: fa and fa-times
  # Standard display of a SELECTED facet value, no link, special span
  # with class, and 'remove' button.
  def render_selected_facet_value(facet_solr_field, item)
    #Updated class for Bootstrap Blacklight
    content_tag(:span, render_facet_value(facet_solr_field, item, :suppress_link => true), :class => "selected") +
      link_to(content_tag(:i, '', :class => "fa fa-times") + content_tag(:span, '[remove]', :class => 'sr-only'), search_action_path(search_state.remove_facet_params(facet_solr_field, item)), :class=>"remove")
  end

  def render_collection_title
	  if params[:action] == "show" && render_document_show_field_value(:document => @document, :field => 'collection_tesim').present?
	    return ": "+ strip_links(render_document_show_field_value(:document => @document, :field => 'collection_tesim'))
    end
  end
  


end
