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
      fq = '-status_ssi:"Suppressed" AND -active_fedora_model_ssi:"Page" AND -collection_tesim:"Core Historical Library of Agriculture"'

    elsif environment == 'production'
      fq = '(collection_tesim:"Bill Adler Archive" AND -adler_status:"Suppressed for portal")
      OR (-status_ssi:"Unpublished" AND -status_ssi:"Suppressed" AND -active_fedora_model_ssi:"Page"
      AND +(collection_tesim:"New York State Aerial Photographs"
      OR collection_tesim:"Huntington Free Library Native American Collection"
      OR collection_tesim:"John Reps Collection - Bastides"
      OR collection_tesim:"Persuasive Maps: PJ Mode Collection"
      OR collection_tesim:"Ragamala Paintings"
      OR collection_tesim:"Alfred Montalvo Bolivian Digital Pamphlets Collection"
      OR collection_tesim:"Beyond the Taj: Architectural Traditions and Landscape Experience in South Asia"
      OR collection_tesim:"Campus Artifacts, Art & Memorabilia"
      OR collection_tesim:"Hip Hop Party and Event Flyers"
      OR collection_tesim:"Andrew Dickson White Architectural Photographs Collection"
      OR collection_tesim:"Historic Glacial Images of Alaska and Greenland"
      OR collection_tesim:"Mysteries at Eleusis: Images of Inscriptions"
      OR collection_tesim:"Icelandic and Faroese Photographs of Frederick W.W. Howell"
      OR collection_tesim:"Alison Mason Kingsbury: Life and Art"
      OR collection_tesim:"John Reps Collection - Slides"
      OR collection_tesim:"John Clair Miller"
      OR collection_tesim:"Cornell Coins Collection"
      OR collection_tesim:"Cornell Squeeze Collection"
      OR collection_tesim:"Billie Jean Isbell Andean Collection"
      OR collection_tesim:"Cornell Gem Impressions Collection"
      OR collection_tesim:"Punk Flyers"
      OR collection_tesim:"Cornell Cast Collection"
      OR collection_tesim:"Obama Visual Iconography"
      OR collection_tesim:"Loewentheil Collection of African-American Photographs"
      ))'
    end
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
