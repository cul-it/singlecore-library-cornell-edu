# encoding: UTF-8
Feature: Confirm that collections have the correct number of assets
@collections
@counts

    @digcoll-1657
	Scenario Outline: check collection counts in development and production
	    Given I enable the 'production' environment
		And I browse collection nicknamed '<nickname>'
        Then the collection should show about <prod_count> assets
		Then I enable the 'development' environment
		And I browse collection nicknamed '<nickname>'
        Then the collection should show about <dev_count> assets

	Examples:
	| source | nickname | prod_count | dev_count |
	| dlxs | bol | 30938 | 30938 |
	| dlxs | chla | 1190622 | 1190622 |
	| dlxs | ezra | 29715 | 29715 |
	| dlxs | flow | 23718 | 23718 |
	| dlxs | hearth | 670256 | 670256 |
	| dlxs | hivebees | 34479 | 34479 |
	| dlxs | hunt | 33392 | 33392 |
	| dlxs | izquierda | 0 | 2740 |
	| dlxs | liber | 1205 | 1205 |
	| dlxs | may | 225331 | 225332 |
	| dlxs | mmay | 2329 | 2329 |
	| dlxs | nur | 0 | 16503 |
	| dlxs | sat | 0 | 42038 |
	| dlxs | scott | 4542 | 4542 |
	| dlxs | sea | 0 | 124420 |
	| dlxs | witchcraft | 23078 | 23078 |
	| dlxs | words | 446 | 446 |
	| forum | adler | 1717 | 13465 |
	| forum | adwhite | 1364 | 1364 |
	| forum | aerial | 3299 | 3299 |
	| forum | ahearn | 0 | 907 |
	| forum | anthrocollections | 992 | 992 |
	| forum | artifacts | 610 | 1673 |
	| forum | bam | 2310 | 2310 |
	| forum | bastides | 2523 | 2523 |
	| forum | beyondtaj | 6682 | 6688 |
	| forum | blaschka | 251 | 251 | # 20108237 is deleted
	| forum | cast | 882 | 967 |
	| forum | coins | 1791 | 1804 |
	| forum | conzo | 6055 | 6055 |
	| forum | culmaps | 0 | 1367 |
	# | forum | dendro | 0 | 98 |
	| forum | divinecomedy | 0 | 1898 |
	| forum | dynkin | 0 | 915 |
	| forum | eleusis | 842 | 847 |
	| forum | fallout | 15 | 15 |
	| forum | gamelan | 565 | 565 |
	| forum | gems | 3794 | 3794 |
	| forum | harrisson | 0 | 276 |
	| forum | hill | 202 | 202 |
	| forum | hiphopflyers | 494 | 494 |
	| forum | howell | 416 | 416 |
	| forum | impersonator | 884 | 884 |
	| forum | isbell | 1188 | 1190 |
	| forum | iwo | 1739 | 1739 |
	| forum | japantheatre | 926 | 1076 |
	| forum | japanworld | 4231 | 4231 |
	| forum | johnclairmiller | 240 | 240 |
	| forum | johnclairmillericeland | 612 | 616 |
	| forum | karma | 4038 | 4038 |
	| forum | kassoy | 0 | 139 |
	| forum | kingsbury | 522 | 522 |
	| forum | kmoddl | 307 | 307 |
	| forum | leuenberger | 0 | 231 |
	| forum | lindsaycooper | 589 | 589 |
	| forum | loewentheil | 638 | 1476 |
	| forum | obama | 87 | 200 |
	| forum | page | 55 | 55 |
	| forum | paniccioli | 19581 | 27894 |
	| forum | pjmode | 862 | 1117 |
	| forum | politicalamericana | 2012 | 2223 |
	| forum | prisonwritings | 449 | 449 |
	| forum | punkflyers | 2091 | 2102 |
	| forum | rackeralbums | 81 | 81 |
	| forum | ragamala | 4014 | 4123 |
	| forum | railroad | 1655 | 1655 |
	| forum | repsslides | 1357 | 1357 |
	| forum | rmc | 11438 | 18192 |
	| forum | rudin | 517 | 517 |
	| forum | seneca | 690 | 690 |
	| forum | squeezes | 185 | 369 |
	| forum | srilanka | 526 | 527 |
	| forum | stereoscopes | 213 | 213 |
	| forum | sterrett | 341 | 341 |
	| forum | tamang | 2539 | 2539 |
	| forum | tarr | 1948 | 1948 |
	| forum | tellennasbeh | 56 | 56 |
	| forum | vicos | 2246 | 2246 |
	| forum | willardstraight | 176 | 176 |
	| other | art2301 | 55 | 55 |
	# | other | claireholt | 0 | 1785 |
