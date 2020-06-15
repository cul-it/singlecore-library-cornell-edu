# encoding: UTF-8
Feature: Support for DLXS collections
@dlxs

    Scenario Outline: All DLXS fields should be present

    @image-compound
    Scenario Outline: Compound images should not show one item record per image
        Given I go to asset '<asset_id>'
            Then the field labeled '<field>' should begin with '<starting>'

    Examples:
    | asset_id | field | starting |
    # | bol0001 | Title | Manifiesto dirijido por la representación |
    # | bol0001 | Collection | Alfredo Montalvo Bolivian Digital Pamphlets Collection |
    # | bol0001 | Creator | Fernández, Hilarión |
    # | bol0001 | Site | Sucre |
    # | bol0001 | Language |  Spanish |
    # | bol0001 | Subject | Bolivia - Pamphlets |
    # | bol0001 | Extent | 16 300dpi JPEG page images|
    # | bol0001 | Publisher | Imprenta |
    # | bol0001 | Publication Place | Sucre |
    # | bol0001 | Publication Date | 1848 |
    # | bol0001 | Repository | Division of Rare and Manuscript Collections |
    # | bol0001 | Rights | The content in the Alfredo Montalvo Bolivian Digital |
    # | chla1043101_01_100 | Title | Rural New Yorker, Vol. 01, No. 01, January 3, 1850 |
    # | chla1043101_01_100 | Collection | Core Historical Literature of Agriculture |
    # | chla1043101_01_100 | Subject | Agriculture |
    # | chla1043101_01_100 | Extent | 424 |
    # | ezra0001_1 | Title | Correspondence: June 17, 1828 - September 22, 1830 |
    # | ezra0001_1 | Collection | Ezra Cornell Letters |
    # | ezra0001_1 | Extent | 35 |
    # | flow1685158 | Title | Symbolorum et emblematum centuriae |
    # | flow1685158 | Collection | Language of Flowers |
    # | flow1685158 | Creator | Camerarius, Joachim, 1534-1598 |
    # | flow1685158 | Catalog Record | 1685158 |
    # | flow1685158 | Subject | Emblems |
    # | flow1685158 | Extent | 432 300dpi JPG page images |
    # | flow1685158 | Note | 432 p. |
    # | flow1685158 | Publisher | Typis Voegelinanis |
    # | flow1685158 | Publication Place | Leipzig |
    # | hivebees5017167 | Title | Langstroth on the hive and the honey-bee |
    # | hivebees5017167 | Collection | Core Historical Literature of Agriculture |
    # | hivebees5017167 | Creator | Langstroth, L.L. 1810-1895. |
    # | hivebees5017167 | Date | 1853 |
    # | hivebees5017167 | Identifier | hivebees5017167 |
    # | hivebees5017167 | Subject | Bees |
    # | hivebees5017167 | Extent | 390 300dpi JPEG page images |
    # | hivebees5017167 | Publisher | Hopkins, Bridgman |
    # | hivebees5017167 | Publication Place |  Northampton |
    # | hearth1891092_102_103 | Title | Vol. 102, No. 1-6, January-June, 1923 |
    # | hearth1891092_102_103 | Date | 1923 |
    # | hearth1891092_102_103 | Issue Date | 1923 |
    # | hearth1891092_102_103 | Identifier | hearth1891092_102_103 |
    # | hearth1891092_102_103 | Catalog Record | 1891092 |
    # | hearth1891092_102_103 | Subject | Dressmaking |
    # | hearth1891092_102_103 | Extent | 1138 300dpi JPG page images |
    # | hearth1891092_102_103 | Note | Digitization funded by Institute of Museum |
    # | hearth1891092_102_103 | Publisher | The Butterick company, inc. |
    # | hearth1891092_102_103 | Publication Place | New York |
    | hunt0001_102 | Title | Arte de el idioma mexicano |
    | hunt0001_102 | Creator | Perez, Manuel |
    | hunt0001_102 | Site | Mexico |
    | hunt0001_102 | Language | English |
    | hunt0001_102 | Keywords | Nahuatl language - Grammar |
    | hunt0001_102 | Extent | 450 300dpi JPEG page images |
    | hunt0001_102 | Note | 450 p. |
    | hunt0001_102 | Publisher | F. de Ribera Calderon |
    | hunt0001_102 | Publication Place | Mexico |
    | hunt0001_102 | Publication Date | 1713 |
    | hunt0001_102 | Repository | Cornell University Library |
    | hunt0001_102 | Rights | The images in this collection are in the public domain |
