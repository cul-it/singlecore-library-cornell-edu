# -*- encoding : utf-8 -*-
class SolrDocument

  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument


  # self.unique_key = 'id'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension( Blacklight::Document::Email )

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension( Blacklight::Document::Sms )

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension( Blacklight::Document::DublinCore)

  def dlxs_thumbnail
    "http://hydrastg.library.cornell.edu/fedora/objects/#{id}/datastreams/thumbnailImage/content"
  end

  def agent_hash
    compound = JSON.parse(first(:agent_hash_tesim))
    compound.inspect
    parts = []
    parts << '<div class="compound-field agent">'
    compound.each do | part |
      parts << '<span class="qualifier">'
      parts << part['agent_role'].capitalize + ':'
      parts << '</span> '
      parts << '<span class="value">'
      parts << part['agent']
      parts << '</span>'
    end
    parts << '</div>'
    return parts.join('').html_safe
  end


end
