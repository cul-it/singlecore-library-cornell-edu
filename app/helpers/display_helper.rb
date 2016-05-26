module DisplayHelper

  # Overrides original method from facets_helper_behavior.rb
  # -- Replace icon-remove (glyphicon) with appropriate Font Awesome classes: fa and fa-times
  # Standard display of a SELECTED facet value, no link, special span
  # with class, and 'remove' button.
  def render_selected_facet_value(facet_solr_field, item)
    #Updated class for Bootstrap Blacklight
    content_tag(:span, render_facet_value(facet_solr_field, item, :suppress_link => true), :class => "selected") +
      link_to(content_tag(:i, '', :class => "fa fa-times") + content_tag(:span, '[remove]', :class => 'hide-text'), remove_facet_params(facet_solr_field, item, params.except('sbjct')), :class=>"remove")
  end




end
