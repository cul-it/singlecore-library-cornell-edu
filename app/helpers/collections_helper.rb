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
        get_image(example['collection_nickname_ssi'])
    end

    def get_image(nickname)
        images = {
            adler: '/images/thumb/thumb-ragamala.jpg',
            adwhite: '/images/thumb/thumb-ragamala.jpg',
            aerial: '/images/thumb/thumb-ragamala.jpg',
            ahearn: '/images/thumb/thumb-ragamala.jpg',
            anthrocollections: '/images/thumb/thumb-ragamala.jpg',
            artifacts: '/images/thumb/thumb-ragamala.jpg',
            bam: '/images/thumb/thumb-ragamala.jpg',
            bastides: '/images/thumb/thumb-ragamala.jpg',
            beyondtaj: '/images/thumb/thumb-ragamala.jpg',
            blaschka: '/images/thumb/thumb-ragamala.jpg',
            bol: '/images/thumb/thumb-ragamala.jpg',
            cast: '/images/thumb/thumb-ragamala.jpg',
            chla: '/images/thumb/thumb-ragamala.jpg',
            coins: '/images/thumb/thumb-ragamala.jpg',
            conzo: '/images/thumb/thumb-ragamala.jpg',
            cooper: '/images/thumb/thumb-ragamala.jpg',
            culmaps: '/images/thumb/thumb-ragamala.jpg',
            divinecomedy: '/images/thumb/thumb-ragamala.jpg',
            dynkin: '/images/thumb/thumb-ragamala.jpg',
            eleusis: '/images/thumb/thumb-ragamala.jpg',
            ezra: '/images/thumb/thumb-ragamala.jpg',
            fallout: '/images/thumb/thumb-ragamala.jpg',
            flow: '/images/thumb/thumb-ragamala.jpg',
            gamelan: '/images/thumb/thumb-ragamala.jpg',
            gems: '/images/thumb/thumb-ragamala.jpg',
            harrisson: '/images/thumb/thumb-ragamala.jpg',
            hearth: '/images/thumb/thumb-ragamala.jpg',
            hill: '/images/thumb/thumb-ragamala.jpg',
            hiphopflyers: '/images/thumb/thumb-ragamala.jpg',
            hivebees: '/images/thumb/thumb-ragamala.jpg',
            howell: '/images/thumb/thumb-ragamala.jpg',
            hunt: '/images/thumb/thumb-ragamala.jpg',
            impersonator: '/images/thumb/thumb-ragamala.jpg',
            isbell: '/images/thumb/thumb-ragamala.jpg',
            iwo: '/images/thumb/thumb-ragamala.jpg',
            izq: '/images/thumb/thumb-ragamala.jpg',
            izquierda: '/images/thumb/thumb-ragamala.jpg',
            japantheatre: '/images/thumb/thumb-ragamala.jpg',
            japanworld: '/images/thumb/thumb-ragamala.jpg',
            johnclairmiller: '/images/thumb/thumb-ragamala.jpg',
            johnclairmillericeland: '/images/thumb/thumb-ragamala.jpg',
            karma: '/images/thumb/thumb-ragamala.jpg',
            kassoy: '/images/thumb/thumb-ragamala.jpg',
            kingsbury: '/images/thumb/thumb-ragamala.jpg',
            kmoddl: '/images/thumb/thumb-ragamala.jpg',
            leuenberger: '/images/thumb/thumb-ragamala.jpg',
            liber: '/images/thumb/thumb-ragamala.jpg',
            lindsaycooper: '/images/thumb/thumb-ragamala.jpg',
            loewentheil: '/images/thumb/thumb-ragamala.jpg',
            may: '/images/thumb/thumb-ragamala.jpg',
            mmay: '/images/thumb/thumb-ragamala.jpg',
            nur: '/images/thumb/thumb-ragamala.jpg',
            obama: '/images/thumb/thumb-ragamala.jpg',
            page: '/images/thumb/thumb-ragamala.jpg',
            paniccioli: '/images/thumb/thumb-ragamala.jpg',
            pjmode: '/images/thumb/thumb-ragamala.jpg',
            politicalamericana: '/images/thumb/thumb-ragamala.jpg',
            prisonwritings: '/images/thumb/thumb-ragamala.jpg',
            punkflyers: '/images/thumb/thumb-ragamala.jpg',
            rackeralbums: '/images/thumb/thumb-ragamala.jpg',
            ragamala: '/images/thumb/thumb-ragamala.jpg',
            railroad: '/images/thumb/thumb-ragamala.jpg',
            repsslides: '/images/thumb/thumb-ragamala.jpg',
            rmc: '/images/thumb/thumb-ragamala.jpg',
            rudin: '/images/thumb/thumb-ragamala.jpg',
            sat: '/images/thumb/thumb-ragamala.jpg',
            scott: '/images/thumb/thumb-ragamala.jpg',
            sea: '/images/thumb/thumb-ragamala.jpg',
            seneca: '/images/thumb/thumb-ragamala.jpg',
            squeezes: '/images/thumb/thumb-ragamala.jpg',
            srilanka: '/images/thumb/thumb-ragamala.jpg',
            stereoscopes: '/images/thumb/thumb-ragamala.jpg',
            sterrett: '/images/thumb/thumb-ragamala.jpg',
            tamang: '/images/thumb/thumb-ragamala.jpg',
            tarr: '/images/thumb/thumb-ragamala.jpg',
            tellennasbeh: '/images/thumb/thumb-ragamala.jpg',
            vicos: '/images/thumb/thumb-ragamala.jpg',
            willardstraight: '/images/thumb/thumb-ragamala.jpg',
            witchcraft: '/images/thumb/thumb-ragamala.jpg',
            words: '/images/thumb/thumb-ragamala.jpg'
        }
       images.key?(nickname.to_sym) ? images[nickname.to_sym] : ''
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
