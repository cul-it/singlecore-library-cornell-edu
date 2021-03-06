# encoding: UTF-8
Feature: Asset MAP fields
@fields
@fields-MAP

    Scenario Outline: Check the values of common MAP fields across assets

    @fields-MAP-qualifiers
    @DIGCOLL-1547
    Scenario Outline: View MAP qualifier field labels across assets
        Given I go to Forum asset id '<id>'
            Then I should see the field labeled '<new_label>'
            And the field labeled '<new_label>' should begin with '<starting>'

    Examples:
    | category | new_label | id | starting |
    | Agent | Composer | 21812058 | Lindsay Cooper |
    | Agent | Creator | 21812058 | Lindsay Cooper |
    | Agent | Graphic Designer | 455376 | Eddie Ed |
    | Agent | Performer | 455376 | Afrika Bambaataa |
    | Agent | Photographer | 21812058 | Bob Rusch |
    | Agent | Promoter | 455376 | Red, Spider, Sunshine |
    | Agent | Writer | 21812058 | Robert Iannapollo |
    | Annotation | Annotation | 25566643 | Society of Soul |
    | Date | Acquisition Date | 50534 | 1981-07-20 |
    | Date | Image Date | 50534 | 2012-06-29 |
    | Identifier | Accession Number | 1972751 | 01_1_0138 |
    | Identifier | Accession Number | 3307603 | MA_L_05_10_18 |
    | Identifier | Berlin Catalog No. | 1972751 | 201 |
    | Identifier | Column Number | 3307603 | Column 5 |
    | Identifier | First Line | 3307603 | 10 |
    | Identifier | Inventory No. | 1972751 | FG 193 |
    | Identifier | Last Line | 3307603 | 18 |
    | Identifier | Lines | 3307603 | 10 through 18 |
    | Identifier | Stosch Category | 1972751 | Category 1: Egyptian Gems |
    | Identifier | Winckelmann No. | 1972751 | 138 |
    | Legacy Label | Canticle Image | 265890 | 37 |
    | Legacy Label | Canticle | 265890 | Inferno |
    | Legacy Label | Canto Image | 265890 | 1 |
    | Legacy Label | Canto | 265890 | 34 |
    | Legacy Label | Common Name | 20108068 | Spaghetti Worm |
    | Legacy Label | Current Genus | 20108068 | Pista |
    | Legacy Label | Current Species | 20108068 | cretacea |
    | Legacy Label | Old Genus | 20108068 | Terebella |
    | Legacy Label | Old Species | 20108068 | emmalini |
    | Legacy Label | Original Blaschka Species Name | 20108068 | Terebella emmalini |
    | Legacy Label | Volume Image | 265890 | 39 |
    | Measurement | Measurement | 22377128 | 0.64 (grams, weight) |
    | Measurement | Measurement | 945968 | torso: 130 x 85 (shoulders) (centimeters, height x width) |
    | Series | Series | 298201 | Gender roles series |
    | Title Language | Title (English) | 18860179 | Nordic House |
    | Title Language | Title (English) | 20632920 | Chaim Zinger and Yosel Cutler Write Songs |
    | Title Language | Title (Icelandic) | 18860179 | Norræna húsið |
    | Title Language | Title (Yiddish Romanized) | 20632920 | Hitlers mapole |
    | Title Language | Title (Yiddish) | 20632920 | היטלערס מפּלה |
    | Title | Title (English) | 21072622 | ICOR Presents Mordechai the Shokhet |
    | Title | Title (English) | 21073017 | Clara Lemlich to all Women |
    | Title | Title (Yiddish Romanized) | 21072622 | Hert a mayse |
    | Title | Title (Yiddish Romanized) | 21073017 | Tsvey vekhntlekher briv fun froyen shtot komitet |
    | Title | Title (Yiddish) | 21072622 | הערט אַ מעשה |
    | Title | Title (Yiddish) | 21073017 | צוויי וועכנטלעכער |
    | Title | Title | 49887 | 坂東彥三倭一流 |

    @fields-MAP-multivalued
    Scenario Outline: View MAP field labels with multiple values across assets
        Given I go to Forum asset id '<id>'
            Then I should see the field labeled '<new_label>'
            And the field labeled '<new_label>' should begin with '<starting>'
            And the field labeled '<new_label>' should also contain '<somewhere>'

    Examples:
    | category | id | new_label | starting | somewhere |
    | Agent | 455376 | Performer | Afrika Bambaataa | Soul Sonic Force |
    | Agent | 455376 | Performer | Afrika Bambaataa | Lisa Lee |
    | Measurement | 945968 | Measurement | torso: 130 x 85 (shoulders) (centimeters, height x width) | left arm: 107 (centimeters, height) |
    | Title | 49887 | Title | 坂東彥三倭 | Yōshū Chikanobu zuga |
    | Title | 49887 | Title | 坂東彥三倭 | Bandō Hikosa Yamato |

    @fields-MAP-complete
    @DIGCOLL-1651
    Scenario Outline: Confirm that all fields are showing
        Given I go to Forum asset id '<id>'
            Then the field labeled '<new_label>' should begin with '<somewhere>'

    Examples:
    | id | new_label | somewhere |
    | 19343333  | Notes  | The collection includes four maps  |
    | 9415856 | Country | Iceland |
    | 9415856 | Transcription | Íslenskir hestar í vetrarbúningi |
    | 9415856 | Culture | Icelandic |
    | 9415856 | Rights | This image is believed to be in the public domain under Icelandic and US law |
    | 9415849 | Transcription | Íþróttamót Rvk 1911. |

    @fields-MAP-facet-links
    @DIGCOLL-1654
    Scenario Outline: Link field values to facets so similar items can be found
        Given I go to Forum asset id '<id>'
            Then the field labeled '<new_label>' should begin '<starting>' and link to facet '<facet>'

    Examples:
    | category | id | new_label | starting | facet |
    | Agent | 455376 | Performer | Afrika Bambaataa | agent_tesim |
    | Agent | 455376 | Graphic Designer | Eddie Ed | agent_tesim |
    | Agent | 455376 | Promoter | Red, Spider, Sunshine | agent_tesim |
    