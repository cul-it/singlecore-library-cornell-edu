class CannedQueryController < ApplicationController

  def initialize
    super
    init_can
  end

  def init_can
    @can = {
      adler: { f: { collection_tesim: ['Adler Hip Hop Archive'] } },
      adwhite: { f: { collection_tesim: ['Andrew Dickson White Architectural Photographs Collection'] } },
      aerial: { f: { collection_tesim: ['New York State Aerial Photographs'] } },
      ahearn: { f: { collection_tesim: ['Charlie Ahearn Archive'] } },
      anthrocollections: { f: { collection_tesim: ['Selections from the Cornell Anthropology Collections'] } },
      artifacts: { f: { collection_tesim: ['Campus Artifacts, Art & Memorabilia'] } },
      bam: { f: { collection_tesim: ['Afrika Bambaataa Vinyl Collection'] } },
      bastides: { f: { collection_tesim: ['John Reps Collection - Bastides'] } },
      beyondtaj: { f: { collection_tesim: ['Beyond the Taj: Architectural Traditions and Landscape Experience in South Asia'] } },
      blaschka: { f: { collection_tesim: ['Cornell Collection of Blaschka Invertebrate Models'] } },
      bol: { f: { collection_tesim: ['Alfredo Montalvo Bolivian Digital Pamphlets Collection'] } },
      cast: { f: { collection_tesim: ['Cornell Cast Collection'] } },
      chla: { f: { collection_tesim: ['Core Historical Literature of Agriculture'] } },
      claireholt: { f: { collection_tesim: ['Claire Holt Papers: Images of Indonesian Art, Architecture, and Culture'] } },
      cmip: { f: { collection_tesim: ['Cornell Modern Indonesia Collection'] } },
      coins: { f: { collection_tesim: ['Cornell Coin Collection'] } },
      conzo: { f: { collection_tesim: ['Joe Conzo Jr. Archive'] } },
      coop: { f: { collection_tesim: ['Cooper Bridge Plan Collection'] } },
      culmaps: { f: { collection_tesim: ['Cornell University Library Map Collection'] } },
      divinecomedy: { f: { collection_tesim: ['Divine Comedy Image Archive'] } },
      dynkin: { f: { collection_tesim: ['Eugene B. Dynkin Collection of Mathematics Interviews'] } },
      eleusis: { f: { collection_tesim: ['Mysteries at Eleusis: Images of Inscriptions'] } },
      ezra: { f: { collection_tesim: ['Ezra Cornell Papers, Ezra Cornell Letters'] } },
      fallout: { f: { collection_tesim: ['Nuclear Fallout Pamphlets'] } },
      flow: { f: { collection_tesim: ['Language of Flowers'] } },
      gamelan: { f: { collection_tesim: ['Indonesian Music Archive'] } },
      gems: { f: { collection_tesim: ['Cornell Gem Impressions Collection'] } },
      harrisson: { f: { collection_tesim: ['Tom Harrisson Photographs'] } },
      hearth: { f: { collection_tesim: ['Home Economics Archive: Research, Tradition and History'] } },
      hill: { f: { collection_tesim: ['Hill Ornithology Collection'] } },
      hiphopflyers: { f: { collection_tesim: ['Hip Hop Party and Event Flyers'] } },
      hivebees: { f: { collection_tesim: ['Hive and the Honeybee'] } },
      howell: { f: { collection_tesim: ['Icelandic and Faroese Photographs of Frederick W.W. Howell'] } },
      hunt: { f: { collection_tesim: ['Huntington Free Library Native American Collection'] } },
      impersonator: { f: { collection_tesim: ['Postcards of female and male impersonators and cross-dressing in Europe and the United States, 1900-1930'] } },
      isbell: { f: { collection_tesim: ['Billie Jean Isbell Andean Collection'] } },
      iwo: { f: { collection_tesim: ['International Workers\’ Order (IWO) and Jewish People\'s Fraternal Order (JPFO)'] } },
      izquierda: { f: { collection_tesim: ['History of the Left in Latin America'] } },
      japantheatre: { f: { collection_tesim: ['Theatre Prints and Books from Early Modern Japan'] } },
      japanworld: { f: { collection_tesim: ['Knowledge of the World in Early Modern Japan'] } },
      johnclairmiller: { f: { collection_tesim: ['John Clair Miller'] } },
      johnclairmillericeland: { f: { collection_tesim: ['John Clair Miller Image Collection of Twentieth-Century Architecture in Iceland'] } },
      karma: { f: { collection_tesim: ['Kroch Asia Rare Materials Archive'] } },
      kassoy: { f: { collection_tesim: ['Bernard Kassoy Teacher News Cartoons'] } },
      kingsbury: { f: { collection_tesim: ['Alison Mason Kingsbury: Life and Art'] } },
      kmoddl: { f: { collection_tesim: ['Reuleaux Kinematic Mechanisms Collection'] } },
      leuenberger: { f: { collection_tesim: ['Leuenberger Map Collection'] } },
      liber: { f: { collection_tesim: ['Liberian Law Collection'] } },
      lindsaycooper: { f: { collection_tesim: ['Lindsay Cooper Digital Archive'] } },
      loewentheil: { f: { collection_tesim: ['Loewentheil Collection of African-American Photographs'] } },
      may: { f: { collection_tesim: ['Samuel J. May Anti-Slavery Pamphlet Collection'] } },
      mmay: { f: { collection_tesim: ['Samuel J. May Anti-Slavery Manuscript Collection'] } },
      nur: { f: { collection_tesim: ['Donovan Nuremberg Trials Collection'] } },
      obama: { f: { collection_tesim: ['Obama Visual Iconography'] } },
      page: { f: { collection_tesim: ['Art 2301 Printmaking Student Portfolios'] } },
      paniccioli: { f: { collection_tesim: ['Ernie Paniccioli Photo Archive'] } },
      pjmode: { f: { collection_tesim: ['Persuasive Maps: PJ Mode Collection'] } },
      politicalamericana: { f: { collection_tesim: ['Political Americana'] } },
      prisonwritings: { f: { collection_tesim: ['19th Century Prison Reform Collection'] } },
      punkflyers: { f: { collection_tesim: ['Punk Flyers'] } },
      rackeralbums: { f: { collection_tesim: ['Efraim Racker Art Albums'] } },
      ragamala: { f: { collection_tesim: ['Ragamala Paintings'] } },
      railroad: { f: { collection_tesim: ['U.S. President\'s Railroad Commission Photographs'] } },
      regmi: { f: { collection_tesim: ['Regmi Research Series'] } },
      repsslides: { f: { collection_tesim: ['John Reps Collection - Urban Explorer'] } },
      rmc: { f: { collection_tesim: ['Images from the Rare Book and Manuscript Collections'] } },
      rudin: { f: { collection_tesim: ['Gail and Stephen Rudin Slavery Collection, 1728-1973'] } },
      sat: { f: { collection_tesim: ['Trial Pamphlets Collection'] } },
      scott: { f: { collection_tesim: ['Scottsboro Trials Collection'] } },
      sea: { f: { collection_tesim: ['Southeast Asia Visions'] } },
      seneca: { f: { collection_tesim: ['Onöndowa\'ga:\' (Seneca) Haudenosaunee Archaeological Materials, circa 1688-1754'] } },
      squeezes: { f: { collection_tesim: ['Cornell Squeeze Collection'] } },
      srilanka: { f: { collection_tesim: ['Depicting the Sri Lankan Vernacular'] } },
      stereoscopes: { f: { collection_tesim: ['Stereoscope Pictures From Iceland'] } },
      sterrett: { f: { collection_tesim: ['The J. R. Sitlington Sterrett Collection of Archaeological Photographs'] } },
      tamang: { f: { collection_tesim: ['Digital Tamang'] } },
      tarr: { f: { collection_tesim: ['Historic Glacial Images of Alaska and Greenland'] } },
      tellennasbeh: { f: { collection_tesim: ['Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin'] } },
      vicos: { f: { collection_tesim: ['Vicos Collection'] } },
      willardstraight: { f: { collection_tesim: ['Willard D. Straight in Korea'] } },
      witchcraft: { f: { collection_tesim: ['Digital Witchcraft Collection'] } },
      words: { f: { collection_tesim: ['Wordsworth Collection'] } },
      # examples...
      crazy: { f: { collection_tesim: ['Adler Hip Hop Archive'] }, q: 'crazy legs' },
      rope_work: { q: 'rope work', search_field: 'title', utf8: '✓' }
    }
  end

  def index
  end

  def search_params nickname
    key = nickname.to_sym
    @can[key] unless @can[key].nil?
  end

  def redirect
    search = search_params(params['id'])
    if search.present?
      redirect_to search_catalog_path(search)
    else
      not_found
    end
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

end
