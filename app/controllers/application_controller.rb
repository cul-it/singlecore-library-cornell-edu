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
      adler: => 893,
      adwhite: => 685,
      aerial: => 78,
      ahearn: => 3262,
      anthrocollections: => 273,
      artifacts: => 48,
      bam: => 37250,
      bastides: => 589,
      beyondtaj: => 687,
      blaschka: => 3786,
      cast: => 97,
      claireholt: => 98,
      coins: => 108,
      conzo: => 190,
      culmaps: => 141,
      dendro: => 4547,
      divinecomedy: => 111,
      dynkin: => 4210,
      eleusis: => 166,
      fallout: => 14054,
      gamelan: => 616,
      gems: => 452,
      harrisson: => 28160,
      hill: => 686,
      hiphopflyers: => 167,
      howell: => 112,
      impersonator: => 20019,
      isbell: => 135,
      iwo: => 3450,
      japantheatre: => 50,
      japanworld: => 139,
      johnclairmiller: => 657,
      johnclairmillericeland: => 3609,
      karma: => 49,
      kassoy: => 143,
      kingsbury: => 88,
      kmoddl: => 155,
      leuenberger: => 954,
      lindsaycooper: => 4411,
      loewentheil: => 319,
      obama: => 256,
      page: => 4497,
      paniccioli: => 757,
      pjmode: => 659,
      politicalamericana: => 922,
      prisonwritings: => 4406,
      punkflyers: => 3462,
      rackeralbums: => 920,
      ragamala: => 746,
      railroad: => 3596,
      repsslides: => 370,
      rmc: => 174,
      rudin: => 4409,
      seneca: => 4803,
      squeezes: => 559,
      srilanka: => 1146,
      stereoscopes: => 962,
      sterrett: => 2895,
      tamang: => 522,
      tarr: => 531,
      tellennasbeh: => 3686,
      vicos: => 134,
      willardstraight: => 89
    }

    if environment == 'development'
      fq = '-active_fedora_model_ssi:"Page"
      AND -collection_tesim:"Core Historical Library of Agriculture"
      AND -solr_loader_tesim:"eCommons"
      AND -(collection_tesim:"Cornell Collection of Blaschka Invertebrate Models" AND portal_sequence_isi:[2 TO *])
      AND -(collection_tesim:"Seneca Haudenosaunee Archaeological Materials, circa 1688-1754" AND work_sequence_isi:[2 TO *])
      AND -(collection_tesim:"Icelandic Stereoscopes" AND work_sequence_isi:[2 TO *])'


    elsif environment == 'production'

      fq = '(collection_tesim:"Adler Hip Hop Archive" AND -adler_status:"Suppress for portal")
      OR display_target_tesim:"bento"
      OR -collection_tesim:("Liberian Law Collection"
        "Donovan Nuremberg Trials Collection"
        "Scottsboro Trials Collection"
        "Trial Pamphlets Collection")
      OR (-status_ssi:"Unpublished" AND -status_ssi:"Suppressed" AND -active_fedora_model_ssi:"Page" AND -solr_loader_tesim:"eCommons"
      AND +(
      project_id_ssi:('
      :adler, OR collection_tesim:"Adler Hip Hop Archive"
      :adwhite, OR collection_tesim:"Andrew Dickson White Architectural Photographs Collection"
      :aerial, OR collection_tesim:"New York State Aerial Photographs"
      :anthrocollections, OR collection_tesim:"Selections from the Cornell Anthropology Collections"
      :artifacts, OR collection_tesim:"Campus Artifacts, Art & Memorabilia"
      :bam, OR collection_tesim: "Afrika Bambaataa Vinyl Collection"
      :bastides, OR collection_tesim:"John Reps Collection - Bastides"
      :beyondtaj, OR collection_tesim:"Beyond the Taj: Architectural Traditions and Landscape Experience in South Asia"
      :blaschka, OR (collection_tesim:"Cornell Collection of Blaschka Invertebrate Models" AND portal_sequence_isi:1)
      :cast, OR collection_tesim:"Cornell Cast Collection"
      :coins, OR collection_tesim:"Cornell Coin Collection"
      :conzo, OR collection_tesim: "Joe Conzo Jr. Archive"
      :eleusis, OR collection_tesim:"Mysteries at Eleusis: Images of Inscriptions"
      :fallout, OR collection_tesim: "Nuclear Fallout Pamphlets"
      :gamelan, OR collection_tesim:"Indonesian Music Archive"
      :gems, OR collection_tesim:"Cornell Gem Impressions Collection"
      :hill, OR collection_tesim:"Hill Ornithology Collection"
      :hiphopflyers, OR collection_tesim:"Hip Hop Party and Event Flyers"
      :howell, OR collection_tesim:"Icelandic and Faroese Photographs of Frederick W.W. Howell"
      :impersonator, OR collection_tesim: "Postcards of female and male impersonators and cross-dressing in Europe and the United States, 1900-1931, 1955"
      :isbell, OR collection_tesim:"Billie Jean Isbell Andean Collection"
      :iwo, OR collection_tesim: "International Workers’ Order (IWO) and Jewish People\'s Fraternal Order (JPFO)"
      :japantheatre, OR collection_tesim:"Theatre Prints and Books from Early Modern Japan"
      :japanworld, OR collection_tesim:"Knowledge of the World in Early Modern Japan"
      :johnclairmiller, OR collection_tesim:"John Clair Miller"
      :johnclairmillericeland, OR collection_tesim:"John Clair Miller Image Collection of Twentieth-Century Architecture in Iceland"
      :karma, OR collection_tesim: "Kroch Asia Rare Materials Archive"
      :kingsbury, OR collection_tesim:"Alison Mason Kingsbury: Life and Art"
      :lindsaycooper, OR collection_tesim: "Lindsay Cooper Digital Archive"
      :loewentheil, OR collection_tesim:"Loewentheil Collection of African-American Photographs"
      :obama, OR collection_tesim:"Obama Visual Iconography"
      :page, OR collection_tesim: "Art 2301 Printmaking Student Portfolios"
      :pjmode, OR collection_tesim:"Persuasive Maps: PJ Mode Collection"
      :politicalamericana, OR collection_tesim: "Political Americana"
      :prisonwritings, OR collection_tesim: "19th Century Prison Reform Collection"
      :punkflyers, OR collection_tesim:"Punk Flyers"
      :ragamala, OR collection_tesim:"Ragamala Paintings"
      :railroad, OR collection_tesim: "U.S. President\'s Railroad Commission Photographs"
      :repsslides, OR collection_tesim:"John Reps Collection - Urban Explorer"
      :rmc, OR collection_tesim:"Huntington Free Library Native American Collection"
      :rmc, OR collection_tesim:"Images from the Rare Book and Manuscript Collections"
      :rudin, OR collection_tesim: "Gail and Stephen Rudin Slavery Collection, 1728-1973"
      :squeezes, OR collection_tesim:"Cornell Squeeze Collection"
      :srilanka, OR collection_tesim: "Depicting the Sri Lankan Vernacular"
      :stereoscopes, OR collection_tesim: "Stereoscope Pictures From Iceland"
      :sterrett, OR collection_tesim:"The J. R. Sitlington Sterrett Collection of Archaeological Photographs"
      :tamang, OR collection_tesim: "Digital Tamang"
      :tarr, OR collection_tesim:"Historic Glacial Images of Alaska and Greenland"
      :tellennasbeh, OR collection_tesim:"Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin"
      :vicos, OR collection_tesim:"Vicos Collection"
      :willardstraight, OR collection_tesim:"Willard D. Straight in Korea"
      ')
      OR collection_tesim: (
        "Alfredo Montalvo Bolivian Digital Pamphlets Collection"
        "Core Historical Literature of Agriculture"
        "Hive & the Honeybee"
        "Home Economics Archive: Research, Tradition and History"
        "Language of Flowers"
        "Wordsworth Collection"
        )
      ))'
    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
