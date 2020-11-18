# encoding: UTF-8
Feature: Confirm that collections have the correct number of assets
@collections
@counts

    @digcoll-1657
    Scenario Outline: Check collection counts using facets
        Given I browse collection nicknamed '<nickname>'
        Then the collection should show <count> assets

    Examples:
    | nickname | count |
	#
	# note: if one of these fails, someone may be adding items to the collection
	# it's ok to just comment out the offending collection to get your PR through
	#
	| adler | 11193 |
	| adwhite | 1364 |
	| aerial | 3390 |
	| ahearn | 907 |
	| anthrocollections | 1271 |
	| artifacts | 1673 |
	| bam | 2311 |
	| bastides | 2652 |
	| beyondtaj | 6688 |
	| blaschka | 251 |
	| cast | 967 |
	| coins | 1804 |
	| conzo | 7616 |
	| culmaps | 1531 |
	| dendro | 98 |
	| divinecomedy | 1898 |
	| dynkin | 915 |
	| eleusis | 847 |
	| fallout | 15 |
	| gamelan | 565 |
	| gems | 3794 |
	| harrisson | 276 |
	| hill | 202 |
	| hiphopflyers | 494 |
	| howell | 416 |
	| impersonator | 884 |
	| isbell | 1190 |
	| iwo | 1739 |
	| japantheatre | 1076 |
	| japanworld | 4231 |
	| johnclairmiller | 240 |
	| johnclairmillericeland | 616 |
	| karma | 4140 |
	| kassoy | 139 |
	| kingsbury | 522 |
	| kmoddl | 307 |
	| leuenberger | 231 |
	| lindsaycooper | 589 |
	| loewentheil | 1476 |
	| obama | 200 |
	| page | 55 |
	| paniccioli | 27894 |
	| pjmode | 1088 |
	| politicalamericana | 2223 |
	| prisonwritings | 449 |
	| punkflyers | 2102 |
	| rackeralbums | 81 |
	| ragamala | 4123 |
	| railroad | 1655 |
	| repsslides | 1357 |
	| rmc | 19444 |
	| rudin | 517 |
	| seneca | 693 |
	| squeezes | 369 |
	| srilanka | 527 |
	| stereoscopes | 213 |
	| sterrett | 545 |
	| tamang | 2539 |
	| tarr | 2136 |
	| tellennasbeh | 52 |
	#| vicos | 111 |
	| willardstraight | 176 |
    # dlxs collections
	| bol | 30938 |
	# | chla | 1132199 |
	| ezra | 560 |
	| flow | 23637 |
	| hivebees | 34478 |
	#| hearth | 667340 |
	| hunt | 33392 |
	| izquierda | 2736 |
	| liber | 1205 |
	#| may | 224560 |
	| nur | 16504 |
	| regmi: | 19 |
	| sea | 4 |
	| sat | 42038 |
	# | scott | 4541 |
	# witchcraft | 5073 |
	| words | 446 |
    # other collections
    | art2301 | 55 |
    | claireholt | 1785 |
    # | cmip: | 24 | - collection removed
    # maps | 1616 |
