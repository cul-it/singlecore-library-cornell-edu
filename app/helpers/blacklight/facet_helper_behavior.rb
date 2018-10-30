# frozen_string_literal: true
module Blacklight::FacetsHelperBehavior
  include Blacklight::Facet


##
# Renders a single facet item
def render_facet_item(facet_field, item)
  if facet_in_params?(facet_field, item.value )
    if item.value != "info:fedora/afmodel:Book"
     render_selected_facet_value(facet_field, item)
    end
  else
    if item.value != "info:fedora/afmodel:Book"
     render_facet_value(facet_field, item)
    end
  end
end
