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

    def get_collection_example(nickname)
        q = "select?q=*%3A*&fq=collection_nickname_ssi%3A#{nickname}&sort=id+ASC&rows=1&wt=json&indent=true"
        response = JSON.parse(HTTPClient.get_content("#{ENV['SOLR_URL']}/#{q}"))
        example = response['response']['docs'][0]
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
end
