Given("I browse collection nicknamed {string}") do |string|

    case "#{string}"

    when "adler"
        full = 'Adler Hip Hop Archive'

    when "adwhite"
        full = 'Andrew Dickson White Architectural Photographs Collection'

    when "ahearn"
        full = 'Charlie Ahearn Archive'

    when "alisonmasonkingsbury"
        full = 'Alison Mason Kingsbury: Life and Art'

    when "anthrocollections"
        full = 'Selections from the Cornell Anthropology Collections'

    when "art2301"
        full = 'Art 2301 Printmaking Student Portfolios'

    when "afrika-bambaataa"
        full = 'Afrika Bambaataa Hip Hop Archive'

    when "bastides"
        full = 'John Reps Collection - Bastides'

    when "beyondthetaj"
        full = 'Beyond the Taj: Architectural Traditions and Landscape Experience in South Asia'

    when "bolivianpamphlets"
        full = 'Alfred Montalvo Bolivian Digital Pamphlets Collection'

    when "blaschka"
        full = 'Cornell Collection of Blaschka Invertebrate Models'

    when "cast"
        full = 'Cornell Cast Collection'

    when "coin"
        full = 'Cornell Coin Collection'

    when "divinecomedy"
        full = 'Divine Comedy Image Archive'

    when "efraimracker"
        full = 'Efraim Racker Art Albums'

    when "eleusis"
        full = 'Mysteries at Eleusis: Images of Inscriptions'

    when "fallout"
        full = 'Nuclear Fallout Shelter Collection'

    when "gems"
        full = 'Cornell Gem Impressions Collection'

    when "hill-ornithology"
        full = 'Hill Ornithology Collection'

    when "hiphopflyers"
        full = 'Hip Hop Party and Event Flyers'

    when "howell"
        full = 'Icelandic and Faroese Photographs of Frederick W.W. Howell'

    when "huntingtonfreelibrary"
        full = 'Huntington Free Library Native American Collection'

    when "impersonator"
        full = 'Postcards of female and male impersonators and cross-dressing in Europe and the United States, 1900-1930'

    when "isbellandes"
        full = 'Billie Jean Isbell Andean Collection'

    when "japanesetheater"
        full = 'Theatre Prints and Books from Early Modern Japan'

    when "japaneseworld"
        full = 'Knowledge of the World in Early Modern Japan'

    when "jcm-iceland"
        full = 'John Clair Miller Image Collection of Twentieth-Century Architecture in Iceland'

    when "joeconzo"
        full = 'Joe Conzo Jr. Archive'

    when "johnclairmiller"
        full = 'John Clair Miller'

    when "johnreps"
        full = 'John Reps Collection - Urban Explorer'

    when "karma"
        full = 'Kroch Asia Rare Materials Archive'

    when "kmoddl"
        full = 'Reuleaux Kinematic Mechanisms Collection'

    when "lindsaycooper"
        full = 'Lindsay Cooper Digital Archive'

    when "loewentheil"
        full = 'Loewentheil Collection of African-American Photographs'

    when "maps"
        full = 'Cornell University Library Map Collection'

    when "obama"
        full = 'Obama Visual Iconography'

    when "paniccioli"
        full = 'Ernie Paniccioli Photo Archive'

    when "persuasivemaps"
        full = 'Persuasive Maps: PJ Mode Collection'

    when "political-americana"
        full = 'Political Americana'

    when "punkflyers"
        full = 'Punk Flyers'

    when "railroad"
        full = 'U.S. President\'s Railroad Commission Photographs'

    when "rmc"
        full = 'Images from the Rare Book and Manuscript Collections'

    when "rudin"
        full = 'Rudin Slavery Collection'

    when "squeeze"
        full = 'Cornell Squeeze Collection'

    when "sterrett"
        full = 'The J. R. Sitlington Sterrett Collection of Archaeological Photographs'

    when "stereoscopes"
        full = 'Stereoscope Pictures From Iceland'

    when "straight"
        full = 'Willard D. Straight in Korea'

    when "tamang"
        full = 'Digital Tamang'

    when "tell-en-nasbeh"
        full = 'Digitizing Tell en-Naṣbeh, Biblical Mizpah of Benjamin'

    when "vicos"
        full = 'Vicos Collection'

    else
        full = "Unknown collection nickname"
    end

    visit("/?f[collection_tesim][]=#{full}")
end