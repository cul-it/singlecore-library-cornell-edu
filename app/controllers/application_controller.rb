class ApplicationController < ActionController::Base
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  layout 'blacklight'

  helper Openseadragon::OpenseadragonHelper
  # Adds a few additional behaviors into the application controller
  include Blacklight::Controller
  layout 'blacklight'

  def set_fq(environment)
    if environment == 'development'
      fq = '-active_fedora_model_ssi:"Page"
      AND -collection_tesim:"Core Historical Library of Agriculture"
      AND -solr_loader_tesim:"eCommons"
      AND -(collection_tesim:"Cornell Collection of Blaschka Invertebrate Models" AND portal_sequence_isi:[2 TO *])'


    elsif environment == 'production'
      fq = '(collection_tesim:"Adler Hip Hop Archive"  AND -adler_status:"Suppress for portal")
      OR collection_tesim:"Indonesian Music Archive"
      OR (-status_ssi:"Unpublished" AND -status_ssi:"Suppressed" AND -active_fedora_model_ssi:"Page" AND -solr_loader_tesim:"eCommons"
      AND +(collection_tesim:"New York State Aerial Photographs"
      OR collection_tesim:"Huntington Free Library Native American Collection"
      OR collection_tesim:"John Reps Collection - Bastides"
      OR collection_tesim:"Persuasive Maps: PJ Mode Collection"
      OR collection_tesim:"Ragamala Paintings"
      OR collection_tesim:"Alfredo Montalvo Bolivian Digital Pamphlets Collection"
      OR collection_tesim:"Beyond the Taj: Architectural Traditions and Landscape Experience in South Asia"
      OR collection_tesim:"Campus Artifacts, Art & Memorabilia"
      OR collection_tesim:"Hip Hop Party and Event Flyers"
      OR collection_tesim:"Andrew Dickson White Architectural Photographs Collection"
      OR collection_tesim:"Historic Glacial Images of Alaska and Greenland"
      OR collection_tesim:"Mysteries at Eleusis: Images of Inscriptions"
      OR collection_tesim:"Icelandic and Faroese Photographs of Frederick W.W. Howell"
      OR collection_tesim:"Alison Mason Kingsbury: Life and Art"
      OR collection_tesim:"John Reps Collection - Urban Explorer"
      OR collection_tesim:"John Clair Miller"
      OR collection_tesim:"Cornell Coin Collection"
      OR collection_tesim:"Cornell Squeeze Collection"
      OR collection_tesim:"Billie Jean Isbell Andean Collection"
      OR collection_tesim:"Cornell Gem Impressions Collection"
      OR collection_tesim:"Punk Flyers"
      OR collection_tesim:"Cornell Cast Collection"
      OR collection_tesim:"Obama Visual Iconography"
      OR collection_tesim:"Loewentheil Collection of African-American Photographs"
      OR collection_tesim:"The J. R. Sitlington Sterrett Collection of Archaeological Photographs"
      OR collection_tesim:"Selections from the Cornell Anthropology Collections"
      OR collection_tesim:"Willard D. Straight in Korea"
      OR collection_tesim:"Images from the Rare Book and Manuscript Collections"
      OR collection_tesim:"John Clair Miller Image Collection of Twentieth-Century Architecture in Iceland"
      OR collection_tesim:"Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin"
      OR collection_tesim:"Hill Ornithology Collection"
      OR collection_tesim:"Vicos Collection"
      OR collection_tesim:"Wordsworth Collection"
      OR (collection_tesim:"Cornell Collection of Blaschka Invertebrate Models" AND portal_sequence_isi:1)
      OR collection_tesim: "U.S. President\'s Railroad Commission Photographs"
      OR collection_tesim: "Political Americana"
      OR collection_tesim: "Digital Tamang"
      OR collection_tesim: "Kroch Asia Rare Materials Archive"
      OR collection_tesim: "Art 2301 Printmaking Student Portfolios"
      OR collection_tesim: "Lindsay Cooper Digital Archive"
      OR collection_tesim: "International Workers’ Order (IWO) and Jewish People\'s Fraternal Order (JPFO)"
      ))'
    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
