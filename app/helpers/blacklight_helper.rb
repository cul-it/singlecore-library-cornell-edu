module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior

  def id_to_subject(subject)
  params[:subject] = subject.downcase
end



def link_to_document(doc, field_or_opts = nil, opts={:counter => nil})
    if field_or_opts.is_a? Hash
      opts = field_or_opts
      if opts[:label]
        Deprecation.warn self, "The second argument to link_to_document should now be the label."
        field = opts.delete(:label)
      end
    else
      field = field_or_opts
    end

    field ||= document_show_link_field(doc)
    label = presenter(doc).render_document_index_label field, opts
    id=doc
    if params[:subject]
    subject=params[:subject]
    link_to label, '/'+'catalog' + '/' + doc[:id] + '?subject=' + subject, document_link_params(doc, opts) 
  else
    link_to label, url_for_document(doc), document_link_params(doc, opts)
  end
end

end