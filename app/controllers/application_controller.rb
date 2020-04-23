class ApplicationController < ActionController::Base
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  layout 'blacklight'

  helper Openseadragon::OpenseadragonHelper
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
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

    environment = 'production'
    if environment == 'development'
      fq = '-active_fedora_model_ssi:"Page"
      AND -collection_tesim:"Core Historical Library of Agriculture"
      AND -solr_loader_tesim:"eCommons"
      AND -(collection_tesim:"Cornell Collection of Blaschka Invertebrate Models" AND portal_sequence_isi:[2 TO *])
      AND -(collection_tesim:"Seneca Haudenosaunee Archaeological Materials, circa 1688-1754" AND work_sequence_isi:[2 TO *])
      AND -(collection_tesim:"Icelandic Stereoscopes" AND work_sequence_isi:[2 TO *])'


    elsif environment == 'production'

      # JSTOR Forum filters
      fq_forum = '(project_id_ssi:* AND
        (status_ssi:"Published" OR publish_to_portal_tesim:1) AND
        -adler_status:"Suppress for portal" AND
        -project_id_ssi:('
      fq_forum += [   # skip these collections
        ssc[:ahearn],
        ssc[:claireholt],
        ssc[:culmaps],
        ssc[:dendro],
        ssc[:divinecomedy],
        ssc[:dynkin],
        ssc[:harrisson],
        ssc[:kassoy],
        ssc[:kmoddl],
        ssc[:leuenberger],
        ssc[:paniccioli],
        ssc[:seneca]
      ].join(' OR ')
      fq += ')
      OR collection_tesim: (
        "Alfredo Montalvo Bolivian Digital Pamphlets Collection"
        "Core Historical Literature of Agriculture"
        "Hive & the Honeybee"
        "Home Economics Archive: Research, Tradition and History"
        "Language of Flowers"
        "Wordsworth Collection"
        )
      ))'

save_level = Rails.logger.level; Rails.logger.level = Logger::WARN
Rails.logger.warn "jgr25_log #{__FILE__} #{__LINE__} #{__method__}: in create_scanit_link"
puts fq.to_yaml
Rails.logger.level = save_level
      return fq

    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
