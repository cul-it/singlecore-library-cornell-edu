# encoding: UTF-8
Feature: Support for DLXS collections
@dlxs

    @dlxs-collection-fields
    Scenario Outline: Check fields for a page, book, issue, etc. for each collection
        Given I go to asset '<asset_id>'
            Then the field labeled '<field>' should begin with '<starting>'

    Examples:
	| format | asset_id | field | starting |
	| Book | bol0001 | Title | Manifiesto dirijido por la representación |
	| Book | bol0001 | Collection | Alfredo Montalvo Bolivian Digital Pamphlets Collection |
	| Book | bol0001 | Creator | Fernández, Hilarión |
	| Book | bol0001 | Location | Sucre |
	| Book | bol0001 | Language |  Spanish |
	| Book | bol0001 | Subject | Bolivia - Pamphlets |
	| Book | bol0001 | Extent | 16 300dpi JPEG page images|
	| Book | bol0001 | Publisher | Imprenta |
	| Book | bol0001 | Publication Place | Sucre |
	| Book | bol0001 | Publication Date | 1848 |
	| Book | bol0001 | Repository | Division of Rare and Manuscript Collections |
	| Book | bol0001 | Rights | The content in the Alfredo Montalvo Bolivian Digital |
	| Page | chla1043101_01_100 | Title | Rural New Yorker, Vol. 01, No. 01, January 3, 1850 |
	| Page | chla1043101_01_100 | Collection | Core Historical Literature of Agriculture |
	| Page | chla1043101_01_100 | Subject | Agriculture |
	| Page | chla1043101_01_100 | Extent | 424 |
	| Series | ezra0001_1 | Title | Correspondence: June 17, 1828 - September 22, 1830 |
	| Series | ezra0001_1 | Collection | Ezra Cornell |
	| Series | ezra0001_1 | Extent | 35 |
	| Book | flow1685158 | Title | Symbolorum et emblematum centuriae |
	| Book | flow1685158 | Collection | Language of Flowers |
	| Book | flow1685158 | Creator | Camerarius, Joachim, 1534-1598 |
	| Book | flow1685158 | Catalog Record | 1685158 |
	| Book | flow1685158 | Subject | Emblems |
	| Book | flow1685158 | Extent | 432 300dpi JPG page images |
	| Book | flow1685158 | Notes | 432 p. |
	| Book | flow1685158 | Publisher | Typis Voegelinanis |
	| Book | flow1685158 | Publication Place | Leipzig |
	| Book | hivebees5017167 | Title | Langstroth on the hive and the honey-bee |
	| Book | hivebees5017167 | Collection | Core Historical Literature of Agriculture |
	| Book | hivebees5017167 | Creator | Langstroth, L.L. 1810-1895. |
	| Book | hivebees5017167 | Date | 1853 |
	| Book | hivebees5017167 | Identifier | hivebees5017167 |
	| Book | hivebees5017167 | Subject | Bees |
	| Book | hivebees5017167 | Extent | 390 300dpi JPEG page images |
	| Book | hivebees5017167 | Publisher | Hopkins, Bridgman |
	| Book | hivebees5017167 | Publication Place |  Northampton |
	| Issue | hearth1891092_102_103 | Title | Vol. 102, No. 1-6, January-June, 1923 |
	| Issue | hearth1891092_102_103 | Date | 1923 |
	| Issue | hearth1891092_102_103 | Issue Date | 1923 |
	| Issue | hearth1891092_102_103 | Identifier | hearth1891092_102_103 |
	| Issue | hearth1891092_102_103 | Catalog Record | 1891092 |
	| Issue | hearth1891092_102_103 | Subject | Dressmaking |
	| Issue | hearth1891092_102_103 | Extent | 1138 300dpi JPG page images |
	| Issue | hearth1891092_102_103 | Notes | Digitization funded by Institute of Museum |
	| Issue | hearth1891092_102_103 | Publisher | The Butterick company, inc. |
	| Issue | hearth1891092_102_103 | Publication Place | New York |
	| Issue | hunt0001_102 | Title | Arte de el idioma mexicano |
	| Issue | hunt0001_102 | Creator | Perez, Manuel |
	| Issue | hunt0001_102 | Location | Mexico |
	| Issue | hunt0001_102 | Language | English |
	| Issue | hunt0001_102 | Keywords | Nahuatl language - Grammar |
	| Issue | hunt0001_102 | Extent | 450 300dpi JPEG page images |
	| Issue | hunt0001_102 | Notes | 450 p. |
	| Issue | hunt0001_102 | Publisher | F. de Ribera Calderon |
	| Issue | hunt0001_102 | Publication Place | Mexico |
	| Issue | hunt0001_102 | Publication Date | 1713 |
	| Issue | hunt0001_102 | Repository | Cornell University Library |
	| Issue | hunt0001_102 | Rights | The images in this collection are in the public domain |
	| Journal | izquierda001 | Title | Los Libros |
	| Journal | izquierda001 | Collection | History of the Left in Latin America |
	| Journal | izquierda001 | Subject | Publications -- Latin America |
	| Journal | izquierda001 | Publisher | Los Libros |
	| Journal | izquierda001 | Publication Place | Tucuman, Argentina |
	| Page | liber001_26 | Title | Constitution and Laws of the Commonweath |
	| Page | liber001_26 | Collection | Liberian Law Collection |
	| Page | liber001_26 | Creator | President Barclay |
	| Page | liber001_26 | Language | English |
	| Page | liber001_26 | Subject | Liberian Law Collection |
	| Page | liber001_26 | Keywords | Liberia |
	| Page | liber001_26 | Extent | 56 300dpi JPEG page images |
	| Page | liber001_26 | Publisher | Legislative Council, Commwealth of Liberia |
	| Page | liber001_26 | Publication Place | Moravia, Liberia |
	| Book | may814201 | Title | The unconstitutionality of slavery |
	# | Book | may814201 | Collection | Samuel J. May Anti-Slavery Pamphlet Collection |
	| Book | may814201 | Extent | 160 p. |
	| Book | may814201 | Publisher | Published by Bela Marsh |
	| Book | nur00419 | Title | R & A No. 3081 |
	| Book | nur00419 | Collection | Donovan Nuremberg Trials Collection |
	| Book | nur00419 | Creator | The authors name is not given |
	| Book | nur00419 | Subject | Donovan Nuremberg Trials Collection |
	| Book | nur00419 | Extent | 56 300dpi JPEG page images |
	| Book | nur00419 | Publisher | International Military Tribunal |
	| Book | nur00419 | Publication Place | Nuremberg, Germany |
	| Page | sea001_106 | Title | An official guide to eastern Asia v.5 |
	| Page | sea001_106 | Creator | Japan. Tetsud¯osh¯o |
	| Book | sat0101 | Title | The trial of Thomas Paine, for a libel |
	| Book | sat0101 | Collection | Trial Pamphlets Collection |
	| Book | sat0101 | Creator | Paine, Thomas, 1737-1809, defendant. |
	| Book | sat0101 | Catalog Record | 3264788 |
	| Book | sat0101 | Subject | Trial Pamphlets Collection |
	| Book | sat0101 | Extent | 43 300dpi JPEG page images |
	| Book | sat0101 | Publisher | Printed in Boston by I. Thomas |
	| Book | sat0101 | Publication Place | Boston |
	| Book | scott1001 | Title | State v. Patterson et al. March 1931 |
	| Book | scott1001 | Collection | Scottsboro Trials Collection |
	| Book | scott1001 | Creator | Circuit Court, Jackson County |
	| Book | scott1001 | Subject | Scottsboro Trials Collection |
	| Book | scott1001 | Extent | 63 300dpi JPEG page images |
	| Book | scott1001 | Publication Place | Scottsboro, AL |
    # title too long? | Book | witchcraft096 | Title | A True Relation of the Arraignment of Thirty Witches |
    | Book | witchcraft096 | Collection | Digital Witchcraft Collection |
    | Book | witchcraft096 | Creator | Unknown |
    | Book | witchcraft096 | Identifier | witchcraft096 |
    | Book | witchcraft096 | Extent | 7 300dpi JPEG page image |
    | Book | witchcraft096 | Publisher | Printed by I. H |
	| Journal/Periodical | words1214796 | Title | Philological museum |
	| Journal/Periodical | words1214796 | Collection | Wordsworth Collection |
	| Journal/Periodical | words1214796 | Subject | Classical philology |
	| Journal/Periodical | words1214796 | Publication | Cambridge, Printed by J. Smith for Deightons  |
	| Journal/Periodical | words1214796 | Repository | Division of Rare and Manuscript Collections |

    Scenario Outline: Check each of the dlxs fields
        Given I go to asset '<asset_id>'
            Then the field labeled '<field>' should begin with '<starting>'

    Examples:
    | internal | field | asset_id | starting |
    | author_tesim | Creator | hunt0001_1 | Perez, Manuel |
    | bibid_tesim | Catalog Record | chla1043101_01 | 1043101 |
    | collection_tesim | Collection | bol0001 | Alfredo Montalvo Bolivian Digital Pamphlets Collec |
    | creation_site_location_tesim | Location | bol0001 | Sucre |
    | creator_tesim | Creator | bol0001 | Fernández, Hilarión |
    | date_display_tesim | Issue Date | chla1043101_01 | 1850 |
    | date_tesim | Date | chla1043101_01 | 1850 |
    | extent_tesim | Extent | bol0001 | 16 300dpi JPEG page images |
    | identifier_tesim | Identifier | bol0001_1 | bol0001 |
    | keywords_tesim | Keywords | hunt0001_1 | Nahuatl language - Grammar |
    | lang_tesim | Language | bol0001 | Spanish |
    | language_tesim | Language | bol0001 | Spanish |
    | location_facet_tesim | Location | bol0001 | Sucre |
    | note_tesim | Notes | chla1043101 | 424 p. |
    | notes_tesim | Notes | chla1043101 | 424 p. |
    | pubdate_tesim | Publication Date | bol0001 | 1848 |
    | publication_tesim | Publication | words1214796 | Cambridge, Printed by J. Smith for Deightons [etc. |
    | publisher_tesim | Publisher | bol0001 | Imprenta de Beeche y Compañía |
    | pubplace_tesim | Publication Place | bol0001 | Sucre |
    | repository_tesim | Repository | bol0001 | Division of Rare and Manuscript Collections |
    | rights_tesim | Rights | bol0001 | The content in the Alfredo Montalvo Bolivian Digit |
    | subject_tesim | Subject | bol0001 | Bolivia - Pamphlets |
    | title_tesim | Title | bol0001 | Manifiesto dirijido por la representación naciona |

	Scenario Outline: Journals should list the issues available
		Given I go to asset '<asset_id>'
			Then the field labeled 'Title' should begin with '<title>'
			And the issues listed should start in <year>

	Examples:
		| asset_id | title | year |
		| chla1043101 | Rural New Yorker  | 1850 |
		| chla1895809 | Modern Farmer | 1930 |
		| chla7031969 | Cornell extension bulletin | 1916 |
		| hearth1891092 | The Delineator | 1891 |
