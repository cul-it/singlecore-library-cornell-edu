module CollectionsHelper

    def get_collection_nicknames()
        q = "select?q=*%3A*&rows=0&wt=json&indent=true&facet=true&facet.field=collection_nickname_ssi&facet.limit=-1"
        response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/#{q}"))
        list = response['facet_counts']['facet_fields']['collection_nickname_ssi']
        # commes back as array of (nickname, count, nickname2, count2,...)
        nicknames = list.values_at(* list.each_index.select {|i| i.even?})

        # delete discontinued collections here
        nicknames.delete('regmi:')
        nicknames.delete('cooper')

        # delete misnamed izquierda records
        nicknames.delete('izq')

        nicknames
    end

    def get_collection_example(nickname)
        q = "select?q=*%3A*&fq=collection_nickname_ssi%3A#{nickname}&sort=id+ASC&rows=1&wt=json&indent=true"
        response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/#{q}"))
        example = response['response']['docs'][0]
    end

    def get_collection_source(example)
        if example['publishing_status_tesim'].present?
            'forum'
        else
            'dlxs'
        end
    end

    def get_example_image(example)
        source = get_collection_source(example)
        if source == 'forum'
            if example['media_URL_size_0_tesim'].present?
                return example['media_URL_size_0_tesim'][0]
            end
        elsif source == 'dlxs'
            if example['awsthumbnail_tesim'].present?
                return example['awsthumbnail_tesim'][0]
            end
        end
        get_thumbnail_image(example['collection_nickname_ssi'])
    end

    def get_thumbnail_image(nickname)
        thumb = nickname + ".jpg"
        thumb_path = "/images/thumb/#{thumb}"
        path = File.join(Rails.root, "public", thumb_path)
        image = File.exists?(path) ? thumb_path : "/images/thumb/placeholder.jpg"
   end

    def get_example_landing_page(example)
        if example['collection_website_ssi'].present?
            return example['collection_website_ssi']
        else
            get_landing_page(example['collection_nickname_ssi'])
        end
    end

    def get_landing_page(nickname)
        #  comment out collection line to use the facet via canned query - /cq/nickname
        # explicitly enter portal collection pages if available (like chla) to override facet
        pages = {
            adler: '/collections/adler',
            adwhite: 'https://rmc.library.cornell.edu/adw/',
            aerial: '/collections/aerial',
            ahearn: '/collections/ahearn',
            anthrocollections: '/collections/anthrocollections',
            artifacts: '/collections/artifacts',
            bam: '/collections/bam',
            bastides: '/collections/bastides',
            beyondtaj: '/collections/beyondtaj',
            blaschka: '/collections/blaschka',
            bol: 'https://digital.library.cornell.edu/?f%5Bcollection_tesim%5D%5B%5D=Alfredo+Montalvo+Bolivian+Digital+Pamphlets+Collection',
            cast: '/collections/cast',
            chla: 'https://digital.library.cornell.edu/collections/chla',
            coins: '/collections/coins',
            conzo: '/collections/conzo',
            cooper: '/collections/cooper',
            culmaps: '/collections/culmaps',
            divinecomedy: '/collections/divinecomedy',
            dynkin: '/collections/dynkin',
            eleusis: '/collections/eleusis',
            ezra: '/collections/ezra',
            fallout: '/collections/fallout',
            flow: '/collections/flow',
            gamelan: '/collections/gamelan',
            gems: '/collections/gems',
            harrisson: '/collections/harrisson',
            hearth: '/collections/hearth',
            hill: 'https://rmc.library.cornell.edu/ornithology/',
            hiphopflyers: '/collections/hiphopflyers',
            hivebees: '/collections/hivebees',
            howell: '/collections/howell',
            hunt: 'https://rare.library.cornell.edu/american-indian-history-culture/',
            impersonator: '/collections/impersonator',
            isbell: '/collections/isbell',
            iwo: '/collections/iwo',
            # izq: '/collections/izq',
            # izquierda: 'http://izquierda.library.cornell.edu/',
            japantheatre: '/collections/japantheatre',
            japanworld: '/collections/japanworld',
            johnclairmiller: '/collections/johnclairmiller',
            johnclairmillericeland: '/collections/johnclairmillericeland',
            karma: 'https://digital.library.cornell.edu/?f%5Bcollection_tesim%5D%5B%5D=Kroch+Asia+Rare+Materials+Archive',
            kassoy: 'https://rmc.library.cornell.edu/EAD/htmldocs/KCL06385p.html',
            kingsbury: '/collections/kingsbury',
            kmoddl: '/collections/kmoddl',
            leuenberger: 'https://dcaps.library.cornell.edu/projects/leuenberger-israelpalestine-map-collection',
            liber: '/collections/liber',
            lindsaycooper: '/collections/lindsaycooper',
            loewentheil: '/collections/loewentheil',
            may: 'https://rmc.library.cornell.edu/mayantislaverycoll/',
            mmay: 'https://rmc.library.cornell.edu/mayantislaverycoll/',
            nur: '/collections/nuremberg',
            nuremberg: '/collections/nuremberg',
            obama: '/collections/obama',
            page: '/collections/page',
            paniccioli: '/collections/paniccioli',
            pjmode: '/collections/pjmode',
            politicalamericana: '/collections/politicalamericana',
            prisonwritings: '/collections/prisonwritings',
            punkflyers: '/collections/punkflyers',
            rackeralbums: '/collections/rackeralbums',
            ragamala: '/collections/ragamala',
            railroad: '/collections/railroad',
            repsslides: '/collections/repsslides',
            rmc: '/collections/rmc',
            rudin: '/collections/rudin',
            sat: 'https://lawcollections.library.cornell.edu/trial',
            scott: '/collections/scott',
            sea: 'https://seasiavisions.library.cornell.edu/',
            seneca: '/collections/seneca',
            squeezes: '/collections/squeezes',
            srilanka: '/collections/srilanka',
            stereoscopes: '/collections/stereoscopes',
            sterrett: '/collections/sterrett',
            tamang: '/collections/tamang',
            tarr: '/collections/tarr',
            tellennasbeh: '/collections/tellennasbeh',
            vicos: '/collections/vicos',
            willardstraight: '/collections/willardstraight',
            witchcraft: '/collections/witchcraft',
            words: '/collections/words'
        }
        pages.key?(nickname.to_sym) ? pages[nickname.to_sym] : '/cq/' + nickname
    end

    def get_host_name(url)
        url = "http://#{url}" if URI.parse(url).scheme.nil?
        host = URI.parse(url).host
        host.downcase unless host.nil?
    end

    def is_external_url?(url)
        host = get_host_name(url)
        if host.nil?
            false
        else
            ['digital.library.cornell.edu', 'digital-stg.library.cornell.edu', 'localhost', '0.0.0.0'].exclude? host
        end
    end

end
