# encoding: UTF-8
Feature: Support for DLXS collections
@dlxs

    @dlxs-collection-fields
    Scenario Outline: Check fields for a page, book, issue, etc. for each collection
        Given I go to asset '<asset_id>'
            Then the field labeled '<field>' should begin with '<starting>'

    Examples:
    | asset_id | field | starting |
    | bol0001 | Title | Manifiesto dirijido por la representación |
    | bol0001 | Collection | Alfredo Montalvo Bolivian Digital Pamphlets Collection |
    | bol0001 | Creator | Fernández, Hilarión |
    | bol0001 | Site | Sucre |
    | bol0001 | Language |  Spanish |
    | bol0001 | Subject | Bolivia - Pamphlets |
    | bol0001 | Extent | 16 300dpi JPEG page images|
    | bol0001 | Publisher | Imprenta |
    | bol0001 | Publication Place | Sucre |
    | bol0001 | Publication Date | 1848 |
    | bol0001 | Repository | Division of Rare and Manuscript Collections |
    | bol0001 | Rights | The content in the Alfredo Montalvo Bolivian Digital |
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
    | hivebees5017167 | Title | Langstroth on the hive and the honey-bee |
    | hivebees5017167 | Collection | Core Historical Literature of Agriculture |
    | hivebees5017167 | Creator | Langstroth, L.L. 1810-1895. |
    | hivebees5017167 | Date | 1853 |
    | hivebees5017167 | Identifier | hivebees5017167 |
    | hivebees5017167 | Subject | Bees |
    | hivebees5017167 | Extent | 390 300dpi JPEG page images |
    | hivebees5017167 | Publisher | Hopkins, Bridgman |
    | hivebees5017167 | Publication Place |  Northampton |
    | hearth1891092_102_103 | Title | Vol. 102, No. 1-6, January-June, 1923 |
    | hearth1891092_102_103 | Date | 1923 |
    | hearth1891092_102_103 | Issue Date | 1923 |
    | hearth1891092_102_103 | Identifier | hearth1891092_102_103 |
    | hearth1891092_102_103 | Catalog Record | 1891092 |
    | hearth1891092_102_103 | Subject | Dressmaking |
    | hearth1891092_102_103 | Extent | 1138 300dpi JPG page images |
    | hearth1891092_102_103 | Note | Digitization funded by Institute of Museum |
    | hearth1891092_102_103 | Publisher | The Butterick company, inc. |
    | hearth1891092_102_103 | Publication Place | New York |
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
    | izquierda001 | Title | Los Libros |
    | izquierda001 | Collection | History of the Left in Latin America |
    | izquierda001 | Subject | Publications -- Latin America |
    | izquierda001 | Publisher | Los Libros |
    | izquierda001 | Publication Place | Tucuman, Argentina |
    | liber001_26 | Title | Constitution and Laws of the Commonweath |
    | liber001_26 | Collection | Liberian Law Collection |
    | liber001_26 | Creator | President Barclay |
    | liber001_26 | Language | English |
    | liber001_26 | Subject | Liberian Law Collection |
    | liber001_26 | Keywords | Liberia |
    | liber001_26 | Extent | 56 300dpi JPEG page images |
    | liber001_26 | Publisher | Legislative Council, Commwealth of Liberia |
    | liber001_26 | Publication Place | Moravia, Liberia |
    | may814201_117 | Title | UNS 115 |
    | may814201_117 | Collection | Samuel J. May Anti-Slavery Collection |
    | may814201_117 | Identifier | may814201_117 |
    | nur00419 | Title | R & A No. 3081 |
    | nur00419 | Collection | Donovan Nuremberg Trials Collection |
    | nur00419 | Creator | The authors name is not given |
    | nur00419 | Subject | Donovan Nuremberg Trials Collection |
    | nur00419 | Extent | 56 300dpi JPEG page images |
    | nur00419 | Publisher | International Military Tribunal |
    | nur00419 | Publication Place | Nuremberg, Germany |
    | sea001_106 | Title | An official guide to eastern Asia v.5 |
    | sea001_106 | Creator | Japan. Tetsud¯osh¯o |
    | sat0101 | Title | The trial of Thomas Paine, for a libel |
    | sat0101 | Collection | Trial Pamphlets Collection |
    | sat0101 | Creator | Paine, Thomas, 1737-1809, defendant. |
    | sat0101 | Catalog Record | 3264788 |
    | sat0101 | Subject | Trial Pamphlets Collection |
    | sat0101 | Extent | 43 300dpi JPEG page images |
    | sat0101 | Publisher | Printed in Boston by I. Thomas |
    | sat0101 | Publication Place | Boston |
    | scott1001 | Title | State v. Patterson et al. March 1931 |
    | scott1001 | Collection | Scottsboro Trials Collection |
    | scott1001 | Creator | Circuit Court, Jackson County |
    | scott1001 | Subject | Scottsboro Trials Collection |
    | scott1001 | Extent | 63 300dpi JPEG page images |
    | scott1001 | Publication Place | Scottsboro, AL |
    # skipping witchcraft for now
    | words1214796 | Title | Philological museum |
    | words1214796 | Collection | Wordsworth Collection |
    | words1214796 | Subject | Classical philology |
    | words1214796 | Publication | Cambridge, Printed by J. Smith for Deightons  |
    | words1214796 | Repository | Division of Rare and Manuscript Collections |

