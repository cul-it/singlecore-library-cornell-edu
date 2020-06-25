class ApplicationController < ActionController::Base
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  layout 'blacklight'

  helper Openseadragon::OpenseadragonHelper
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  skip_after_action :discard_flash_if_xhr
  layout 'blacklight'

  def set_fq(environment)
    ssc = {
      adler: 893,
      adwhite: 685,
      aerial: 78,
      ahearn: 3262,
      anthrocollections: 273,
      artifacts: 48,
      bam: 37250,
      bastides: 589,
      beyondtaj: 687,
      blaschka: 3786,
      cast: 97,
      claireholt: 98,
      coins: 108,
      conzo: 190,
      culmaps: 141,
      dendro: 4547,
      divinecomedy: 111,
      dynkin: 4210,
      eleusis: 166,
      fallout: 14054,
      gamelan: 616,
      gems: 452,
      harrisson: 28160,
      hill: 686,
      hiphopflyers: 167,
      howell: 112,
      impersonator: 20019,
      isbell: 135,
      iwo: 3450,
      japantheatre: 50,
      japanworld: 139,
      johnclairmiller: 657,
      johnclairmillericeland: 3609,
      karma: 49,
      kassoy: 143,
      kingsbury: 88,
      kmoddl: 155,
      leuenberger: 954,
      lindsaycooper: 4411,
      loewentheil: 319,
      obama: 256,
      page: 4497,
      paniccioli: 757,
      pjmode: 659,
      politicalamericana: 922,
      prisonwritings: 4406,
      punkflyers: 3462,
      rackeralbums: 920,
      ragamala: 746,
      railroad: 3596,
      repsslides: 370,
      rmc: 174,
      rudin: 4409,
      seneca: 4803,
      squeezes: 559,
      srilanka: 1146,
      stereoscopes: 962,
      sterrett: 2895,
      tamang: 522,
      tarr: 531,
      tellennasbeh: 3686,
      vicos: 134,
      willardstraight: 89
    }

    dlxs = {
      bol: "bol*",			        # Alfredo Montalvo Bolivian Digital Pamphlets Collection
      chla: "chla*",			      # Core Historical Literature of Agriculture
      cooper: "cooper*",		    # Cooper Bridge Plan Collection
      ezra: "ezra*",			      # Ezra Cornell Papers
      flo: "flo*",			        # Language of Flowers
      hearth: "hearth*",		    # Home Economics Archive: Research
      hivebees: "hivebees*",    # Hive and the Honeybee
      hunt: "hunt*",			      # Huntington Free Library Native American Collection
      izquierda: "izquierda*",  # History of the Left in Latin America
      liber: "liber*",		    	# Liberian Law Collection
      may: "may*",			        # Samuel J. May Anti-Slavery Collection
      nur: "nur*",			        # Donovan Nuremberg Trials Collection
      sat: "sat*",			        # Trial Pamphlets Collection
      scott: "scott*",			    # Scottsboro Trials Collection
      sea: "sea*",			        # Southeast Asia Visions
      witchcraft: "witchcraft*",# Digital Witchcraft Collection
      words: "words*"           # Wordsworth Collection
    }

    if environment == 'development'
       fqa = ['-active_fedora_model_ssi:"Page"',
        '-solr_loader_tesim:"eCommons"',
        '-(project_id_ssi:' + ssc[:blaschka].to_s + ' AND portal_sequence_isi:[2 TO *])',
        '-(project_id_ssi:' + ssc[:seneca].to_s + ' AND work_sequence_isi:[2 TO *])',
        '-(project_id_ssi:' + ssc[:stereoscopes].to_s + ' AND work_sequence_isi:[2 TO *])'
      ]
      # these [2 TO *] exclusions make it so only one item shows up in search results, not all images separately
      # compound_object_count_isi can be missing or be 1 for MULTI_IMAGE_COLLECTIONS
      # but if it's [2 TO *] - this is a compound object and we don't show the other multi_image items
      fq = fqa.join(' AND ')

    elsif environment == 'production'

      # JSTOR Forum filters
      fq_forum = '(id:ss* AND
        status_ssi:"Published" AND
        -(work_sequence_isi:[2 TO *] AND -compound_object_count_isi:1) AND
        -project_id_ssi:('
      fq_forum += [   # comment out any collections you want to display
        ssc[:adler],  # special - see below
        #ssc[:adwhite],
        #ssc[:aerial],
        ssc[:ahearn],
        #ssc[:anthrocollections],
        #ssc[:artifacts],
        #ssc[:bam],
        #ssc[:bastides],
        #ssc[:beyondtaj],
        #ssc[:blaschka],
        #ssc[:cast],
        ssc[:claireholt],
        #ssc[:coins],
        #ssc[:conzo],
        ssc[:culmaps],
        ssc[:dendro],
        ssc[:divinecomedy],
        ssc[:dynkin],
        #ssc[:eleusis],
        #ssc[:fallout],
        ssc[:gamelan],   # special - see below
        #ssc[:gems],
        ssc[:harrisson],
        #ssc[:hill],
        #ssc[:hiphopflyers],
        #ssc[:howell],
        #ssc[:impersonator],
        #ssc[:isbell],
        #ssc[:iwo],
        #ssc[:japantheatre],
        #ssc[:japanworld],
        #ssc[:johnclairmiller],
        #ssc[:johnclairmillericeland],
        #ssc[:karma],
        ssc[:kassoy],
        #ssc[:kingsbury],
        ssc[:kmoddl],
        ssc[:leuenberger],
        #ssc[:lindsaycooper],
        #ssc[:loewentheil],
        #ssc[:obama],
        #ssc[:page],
        ssc[:paniccioli],
        #ssc[:pjmode],
        #ssc[:politicalamericana],
        #ssc[:prisonwritings],
        #ssc[:punkflyers],
        #ssc[:rackeralbums],
        #ssc[:ragamala],
        #ssc[:railroad],
        #ssc[:repsslides],
        #ssc[:rmc],
        #ssc[:rudin],
        ssc[:seneca],
        #ssc[:squeezes],
        #ssc[:srilanka],
        #ssc[:stereoscopes],
        #ssc[:sterrett],
        #ssc[:tamang],
        #ssc[:tarr],
        #ssc[:tellennasbeh],
        #ssc[:vicos],
        #ssc[:willardstraight]
      ].join(' OR ')
      fq_forum += '))'

      fq_forum_special =
        # gamelan does not care about status_ssi
        '(project_id_ssi:' + ssc[:gamelan].to_s + ' OR ' +
        # adler does not use status_ssi but has it's own status
        '(project_id_ssi:' + ssc[:adler].to_s + ' AND publish_to_portal_tesim:*))'

      # non-JSTOR filters
      fq_dlxs = '(-active_fedora_model_ssi:"Page" AND
        id:('
      fq_dlxs += [  # include these dlxs collections
        dlxs[:bol],
        dlxs[:chla],
        # dlxs[:cooper],
        # dlxs[:ezra],
        dlxs[:flo],
        dlxs[:hearth],
        dlxs[:hivebees],
        dlxs[:hunt],
        # dlxs[:izquierda],
        # dlxs[:liber],
        # dlxs[:may],
        # dlxs[:nur],
        # dlxs[:sat],
        # dlxs[:scott],
        # dlxs[:sea],
        # dlxs[:witchcraft],
        dlxs[:words]
      ].join(' ')
      fq_dlxs += '))'

      fq = '(' + [fq_dlxs, fq_forum, fq_forum_special].join(' OR ').gsub(/\s+/, " ") + ')'
    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
