# encoding: UTF-8
Feature: Asset MAP fields
@fields
@fields-MAP

    Scenario Outline: Check the values of common MAP fields across assets

    @fields-MAP-qualifiers
    @DIGCOLL-1547
    Scenario Outline: View MAP qualifier field labels across assets
        Given I go to asset id '<id>'
            Then I should see the field labeled '<new_label>'
            And the field labeled '<new_label>' should begin with '<starting>'

    Examples:
    | label | new_label | id | starting |
    | Agent | Creator | 21812058 | Lindsay Cooper |
    | Agent | Writer | 21812058 | Robert Iannapollo |
    | Agent | Composer | 21812058 | Lindsay Cooper |
    | Agent | Photographer | 21812058 | Bob Rusch |
    | Agent | Performer | 455376 | Afrika Bambaataa |
    | Agent | Graphic Designer | 455376 | Eddie Ed |
    | Agent | Promoter | 455376 | Red, Spider, Sunshine |
    | Date | Ring Sequence Date | 22143404 | 1691-1836 |
    | Date | Chronology Date | 22143404 | SSHOriginalEasternWhitePine.crn |
    | Date | Date | 945965 | before 1872 |
    | Date | Acquisition Date | 50534 | 1981-07-20 |
    | Date | Image Date | 50534 | 2012-06-29 |
    | Identifier | Accession Number | 3307603 | MA_L_05_10_18 |
    | Identifier | Column Number | 3307603 | Column 5 |
    | Identifier | First Line | 3307603 | 10 |
    | Identifier | Last Line | 3307603 | 18 |
    | Identifier | Lines | 3307603 | 10 through 18 |
    | Identifier | Accession Number | 1972751 | 01_1_0138 |
    | Identifier | Winckelmann No. | 1972751 | 138 |
    | Identifier | Berlin Catalog No. | 1972751 | 201 |
    | Identifier | Inventory No. | 1972751 | FG 193 |
    | Identifier | Stosch Category | 1972751 | Category 1: Egyptian Gems |
    | Legacy Label | Original Blaschka Species Name | 20108070 | Terebella emmalini |
    | Legacy Label | Common Name | 20108070 | Spaghetti Worm |
    | Legacy Label | Old Genus | 20108070 | Terebella |
    | Legacy Label | Old Species | 20108070 | emmalini |
    | Legacy Label | Current Genus | 20108070 | Pista |
    | Legacy Label | Current Species | 20108070 | cretacea |
    | Legacy Label | Canticle | 265890 | Inferno |
    | Legacy Label | Canto | 265890 | 34 |
    | Legacy Label | Canticle Image | 265890 | 37 |
    | Legacy Label | Canto Image | 265890 | 1 |
    | Legacy Label | Volume Image | 265890 | 39 |
    | Measurement | Measurement | 945968 | torso: 130 x 85 (shoulders) (centimeters, height x width) |
    | Measurement | Measurement | 22377128 | 0.64 (grams, weight) |
    | Title Language | Title (English) | 20632920 | Chaim Zinger and Yosel Cutler Write Songs |
    | Title Language | Title (Yiddish Romanized) | 20632920 | Hitlers mapole |
    | Title Language | Title (Yiddish) | 20632920 | היטלערס מפּלה |
    | Title Language | Title (Icelandic) | 18860179 | Norræna húsið |
    | Title Language | Title (English) | 18860179 | Nordic House |
    | Title | Title | 49887 | 坂東彥三倭一流 |
    | Title | Title (English) | 21072622 | ICOR Presents Mordechai the Shokhet |
    | Title | Title (Yiddish Romanized) | 21072622 | Hert a mayse |
    | Title | Title (Yiddish) | 21072622 | הערט אַ מעשה |
    | Title | Title (English) | 21073017 | Clara Lemlich to all Women |
    | Title | Title (Yiddish Romanized) | 21073017 | Tsvey vekhntlekher briv fun froyen shtot komitet |
    | Title | Title (Yiddish) | 21073017 | צוויי וועכנטלעכער |

    @fields-MAP-multivalued
    Scenario Outline: View MAP field labels with multiple values across assets
        Given I go to asset id '<id>'
            Then I should see the field labeled '<new_label>'
            And the field labeled '<new_label>' should begin with '<starting>'
            And the field labeled '<new_label>' should also contain '<somewhere>'

    Examples:
    | label | id | new_label | starting | somewhere |
    | Agent | 455376 | Performer | Afrika Bambaataa | Soul Sonic Force |
    | Agent | 455376 | Performer | Afrika Bambaataa | Lisa Lee |
    | Measurement | 945968 | Measurement | torso: 130 x 85 (shoulders) (centimeters, height x width) | left arm: 107 (centimeters, height) |
    | Date | 945968 | Date | ca. 1890-1900 | 2008 (image) |
    | Title | 49887 | Title | 坂東彥三倭 | Yōshū Chikanobu zuga |
    | Title | 49887 | Title | 坂東彥三倭 | Bandō Hikosa Yamato |
