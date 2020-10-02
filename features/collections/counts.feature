# encoding: UTF-8
Feature: Confirm that collections have the correct number of assets
@collections
@counts

    @digcoll-1657
	Scenario Outline: check collection counts in development and production
	    Given I enable the 'production' environment
		And I browse collection nicknamed '<nickname>'
        Then the collection should show <prod_count> assets
		Then I enable the 'development' environment
		And I browse collection nicknamed '<nickname>'
        Then the collection should show <dev_count> assets

	Examples:
	| source | nickname | prod_count | dev_count |
	| dlxs | bol | 30939 | 30939 |
	| dlxs | chla | 1182145 | 1182145 |
	| dlxs | ezra | 0 | 26257 |
	| dlxs | flow | 23590 | 23590 |
	| dlxs | hearth | 667363 | 667363 |
	| dlxs | hivebees | 34479 | 34479 |
	| dlxs | hunt | 33392 | 33392 |
	| dlxs | izquierda | 2740 | 2740 |
	| dlxs | liber | 1205 | 1205 |
	| dlxs | may | 224560 | 224560 |
	| dlxs | nur | 16504 | 16504 |
	| dlxs | sat | 42038 | 42038 |
	| dlxs | scott | 0 | 4542 |
	| dlxs | sea | 0 | 124420 |
	| dlxs | witchcraft | 23076 | 23076 |
	| dlxs | words | 446 | 446 |
	| forum | adler | 1717 | 11193 |
	| forum | adwhite | 1364 | 1364 |
	| forum | aerial | 3299 | 3390 |
	| forum | ahearn | 909 | 909 |
	| forum | anthrocollections | 1004 | 1271 |
	| forum | artifacts | 611 | 1673 | # prod 610
	| forum | bam | 2311 | 2311 |
	| forum | bastides | 2523 | 2652 |
	| forum | beyondtaj | 6682 | 6688 |
	| forum | blaschka | 251 | 252 | # 20108237 is deleted
	| forum | cast | 882 | 967 |
	| forum | coins | 1791 | 1804 |
	| forum | conzo | 6055 | 7616 |
	| forum | culmaps | 0 | 1616 |
	| forum | dendro | 0 | 98 |
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
	| forum | impersonator | 442 | 884 |
	| forum | isbell | 1188 | 1190 |
	| forum | iwo | 1741 | 1741 |
	| forum | japantheatre | 926 | 1076 |
	| forum | japanworld | 4231 | 4231 |
	| forum | johnclairmiller | 240 | 240 |
	| forum | johnclairmillericeland | 612 | 616 |
	| forum | karma | 4038 | 4140 |
	| forum | kassoy | 0 | 139 |
	| forum | kingsbury | 522 | 522 |
	| forum | kmoddl | 0 | 234 |
	| forum | leuenberger | 0 | 231 |
	| forum | lindsaycooper | 589 | 589 |
	| forum | loewentheil | 643 | 1481 | # 643 are published, 2 Suppressed
	| forum | obama | 87 | 200 |
	| forum | page | 55 | 55 |
	| forum | paniccioli | 19538 | 27895 |
	| forum | pjmode | 862 | 1083 |
	| forum | politicalamericana | 2012 | 2223 |
	| forum | prisonwritings | 449 | 449 |
	| forum | punkflyers | 2091 | 2102 |
	| forum | rackeralbums | 81 | 81 |
	| forum | ragamala | 4014 | 4123 |
	| forum | railroad | 1655 | 1655 |
	| forum | repsslides | 1357 | 1357 |
	| forum | rmc | 11438 | 19444 |
	| forum | rudin | 517 | 517 |
	| forum | seneca | 0 | 697 |
	| forum | squeezes | 185 | 369 |
	| forum | srilanka | 527 | 527 |
	| forum | stereoscopes | 213 | 213 |
	| forum | sterrett | 341 | 545 |
	| forum | tamang | 2539 | 2539 |
	| forum | tarr | 1948 | 2136 |
	| forum | tellennasbeh | 44 | 52 |
	| forum | vicos | 2246 | 2246 |
	| forum | willardstraight | 176 | 176 |
	| other | art2301 | 55 | 55 |
	| other | claireholt | 0 | 1785 |

	Scenario Outline: Check legacy system counts
	Given I enable the 'production' environment
		And I browse collection nicknamed '<nickname>'
        Then the collection should show <prod_count> assets
		And I browse collection nicknamed '<nickname>' on 'https://digital.library.corell.edu'
		Then the collection should show <digital> assets
		Then I enable the 'development' environment
		And I browse collection nicknamed '<nickname>'
        Then the collection should show <dev_count> assets
		And I browse collection nicknamed '<nickname>' on 'https://digital-stg.library.corell.edu'
		Then the collection should show <digital_stg> assets


	Examples:
	| source | nickname | digital | prod_count | digital_stg | dev_count |
	| dlxs | bol | 30939 | 30939 | 30939 | 30939 |
	| dlxs | chla | 1182145 | 1182145 | 1182145 | 1182145 |
	| dlxs | ezra | 0 | 0 | 26257 | 26257 |
	| dlxs | flow | 23590 | 23590 | 23590 | 23590 |
	| dlxs | hearth | 667363 | 667363 | 667363 | 667363 |
	| dlxs | hivebees | 34479 | 34479 | 34479 | 34479 |
	| dlxs | hunt | 33392 | 33392 | 33392 | 33392 |
	| dlxs | izquierda | 2740 | 2740 | 2740 | 2740 |
	| dlxs | liber | 1205 | 1205 | 1205 | 1205 |
	| dlxs | may | 224560 | 224560 | 224560 | 224560 |
	| dlxs | nur | 16504 | 16504 | 16504 | 16504 |
	| dlxs | sat | 42038 | 42038 | 42038 | 42038 |
	| dlxs | scott | 0 | 0 | 4542 | 4542 |
	| dlxs | sea | 0 | 0 | 124420 | 124420 |
	| dlxs | witchcraft | 23076 | 23076 | 23076 | 23076 |
	| dlxs | words | 446 | 446 | 446 | 446 |
	| forum | adler | 1717 | 1717 | 11193 | 11193 |
	| forum | adwhite | 1364 | 1364 | 1364 | 1364 |
	| forum | aerial | 3299 | 3299 | 3390 | 3390 |
	| forum | ahearn | 909 | 909 | 909 | 909 |
	| forum | anthrocollections | 1004 | 1004 | 1271 | 1271 |
	| forum | artifacts | 611 | 611 | 1673 | 1673 | # prod 610
	| forum | bam | 2311 | 2311 | 2311 | 2311 |
	| forum | bastides | 2523 | 2523 | 2652 | 2652 |
	| forum | beyondtaj | 6682 | 6682 | 6688 | 6688 |
	| forum | blaschka | 251 | 251 | 252 | 252 | # 20108237 is deleted
	| forum | cast | 882 | 882 | 967 | 967 |
	| forum | coins | 1791 | 1791 | 1804 | 1804 |
	| forum | conzo | 6055 | 6055 | 7616 | 7616 |
	| forum | culmaps | 0 | 0 | 1616 | 1616 |
	| forum | dendro | 0 | 0 | 98 | 98 |
	| forum | divinecomedy | 0 | 0 | 1898 | 1898 |
	| forum | dynkin | 0 | 0 | 915 | 915 |
	| forum | eleusis | 842 | 842 | 847 | 847 |
	| forum | fallout | 15 | 15 | 15 | 15 |
	| forum | gamelan | 565 | 565 | 565 | 565 |
	| forum | gems | 3794 | 3794 | 3794 | 3794 |
	| forum | harrisson | 0 | 0 | 276 | 276 |
	| forum | hill | 202 | 202 | 202 | 202 |
	| forum | hiphopflyers | 494 | 494 | 494 | 494 |
	| forum | howell | 416 | 416 | 416 | 416 |
	| forum | impersonator | 442 | 442 | 884 | 884 |
	| forum | isbell | 1188 | 1188 | 1190 | 1190 |
	| forum | iwo | 1741 | 1741 | 1741 | 1741 |
	| forum | japantheatre | 926 | 926 | 1076 | 1076 |
	| forum | japanworld | 4231 | 4231 | 4231 | 4231 |
	| forum | johnclairmiller | 240 | 240 | 240 | 240 |
	| forum | johnclairmillericeland | 612 | 612 | 616 | 616 |
	| forum | karma | 4038 | 4038 | 4140 | 4140 |
	| forum | kassoy | 0 | 0 | 139 | 139 |
	| forum | kingsbury | 522 | 522 | 522 | 522 |
	| forum | kmoddl | 0 | 0 | 234 | 234 |
	| forum | leuenberger | 0 | 0 | 231 | 231 |
	| forum | lindsaycooper | 589 | 589 | 589 | 589 |
	| forum | loewentheil | 643 | 643 | 1481 | 1481 | # 643 are published, 2 Suppressed
	| forum | obama | 87 | 87 | 200 | 200 |
	| forum | page | 55 | 55 | 55 | 55 |
	| forum | paniccioli | 19538 | 19538 | 27895 | 27895 |
	| forum | pjmode | 862 | 862 | 1083 | 1083 |
	| forum | politicalamericana | 2012 | 2012 | 2223 | 2223 |
	| forum | prisonwritings | 449 | 449 | 449 | 449 |
	| forum | punkflyers | 2091 | 2091 | 2102 | 2102 |
	| forum | rackeralbums | 81 | 81 | 81 | 81 |
	| forum | ragamala | 4014 | 4014 | 4123 | 4123 |
	| forum | railroad | 1655 | 1655 | 1655 | 1655 |
	| forum | repsslides | 1357 | 1357 | 1357 | 1357 |
	| forum | rmc | 11438 | 11438 | 19444 | 19444 |
	| forum | rudin | 517 | 517 | 517 | 517 |
	| forum | seneca | 0 | 0 | 697 | 697 |
	| forum | squeezes | 185 | 185 | 369 | 369 |
	| forum | srilanka | 527 | 527 | 527 | 527 |
	| forum | stereoscopes | 213 | 213 | 213 | 213 |
	| forum | sterrett | 341 | 341 | 545 | 545 |
	| forum | tamang | 2539 | 2539 | 2539 | 2539 |
	| forum | tarr | 1948 | 1948 | 2136 | 2136 |
	| forum | tellennasbeh | 44 | 44 | 52 | 52 |
	| forum | vicos | 2246 | 2246 | 2246 | 2246 |
	| forum | willardstraight | 176 | 176 | 176 | 176 |
	| other | art2301 | 2301 | 55 | 55 | 55 |
	| other | claireholt | 0 | 0 | 1785 | 1785 |

