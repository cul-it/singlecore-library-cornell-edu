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
    | bol0003 | Title | Curso elemental de filosofía |
    | bol0003 | Collection | Alfredo Montalvo Bolivian Digital Pamphlets Collection |
    | bol0003 | Creator | "Damiron, Ph and Bernardo |
    | bol0003 | Site | Paz de Ayacucho |
    | bol0003 | Language |  Spanish |
    | bol0003 | Subject | Bolivia - Pamphlets |
    | bol0003 | Extent | 66 300dpi JPEG page images |
    | bol0003 | Publisher | Imprenta |
    | bol0003 | Publication Place | Paz de Ayacucho |
    | bol0003 | Publication Date | 1854 |
    | bol0003 | Repository | Division of Rare and Manuscript Collections |
    | bol0003 | Rights | The content in the Alfredo Montalvo Bolivian Digital |
    | chla1043101_01_100 | Title | Rural New Yorker, Vol. 01, No. 01, January 3, 1850 |
    | chla1043101_01_100 | Collection | Core Historical Literature of Agriculture |
    | chla1043101_01_100 | Subject | Agriculture |
    | chla1043101_01_100 | Extent | 424 |
    | ezra0001_1 | Title | Correspondence: June 17, 1828 - September 22, 1830 |
    | ezra0001_1 | Collection | Ezra Cornell Letters |
    | ezra0001_1 | Extent | 35 |
    | flow1685158 | Title | Symbolorum et emblematum centuriae |
    | flow1685158 | Collection | Language of Flowers |
    | flow1685158 | Creator | Camerarius, Joachim, 1534-1598 |
    | flow1685158 | Catalog Record | 1685158 |
    | flow1685158 | Subject | Emblems |
    | flow1685158 | Extent | 432 300dpi JPG page images |
    | flow1685158 | Note | 432 p. |
    | flow1685158 | Publisher | Typis Voegelinanis |
    | flow1685158 | Publication Place | Leipzig |
    | hivebees6366245_6488_028 | Title | Volume 36 |
    | hivebees6366245_6488_028 | Collection | Core Historical Literature of Agriculture |
    | hivebees6366245_6488_028 | Date | 1896 |
    | hivebees6366245_6488_028 | Issue Date | July 9, 1896 |
    | hivebees6366245_6488_028 | Identifier | hivebees6366245_6488_028 |
    | hivebees6366245_6488_028 | Subject | Bee culture |
    | hivebees6366245_6488_028 | Extent | 16 300dpi JPEG page images |
    | hivebees6366245_6488_028 | Publisher | Dadant & Sons |
    | hivebees6366245_6488_028 | Publication Place | Hamilton, Ill., etc. |


