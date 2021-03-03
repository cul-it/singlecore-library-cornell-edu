module CollectionsHelper

    def get_collection_nicknames()
        q = "select?q=*%3A*&rows=0&wt=json&indent=true&facet=true&facet.field=collection_nickname_ssi&facet.limit=-1"
        response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/#{q}"))
        list = response['facet_counts']['facet_fields']['collection_nickname_ssi']
        # commes back as array of (nickname, count, nickname2, count2,...)
        nicknames = list.values_at(* list.each_index.select {|i| i.even?})
        nicknames.delete('regmi:')
        nicknames
    end
end
