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
	| adler | 7498 |
	| adwhite | 1364 |
	| aerial | 3390 |
	| ahearn | 909 |
	| anthrocollections | 1271 |
	| artifacts | 1673 |
	| bam | 2311 |
	| bastides | 2652 |
	| beyondtaj | 6688 |
	| blaschka | 248 |
	| cast | 967 |
	| coins | 1804 |
	| conzo | 7616 |
	| culmaps | 1616 |
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
	| iwo | 1740 |
	| japantheatre | 1076 |
	| japanworld | 4231 |
	| johnclairmiller | 240 |
	| johnclairmillericeland | 616 |
	| karma | 4140 |
	| kassoy | 139 |
	| kingsbury | 522 |
	| kmoddl | 223 |
	| leuenberger | 231 |
	| lindsaycooper | 589 |
	| loewentheil | 1481 |
	| obama | 200 |
	| page | 55 |
	| paniccioli | 27894 |
	| pjmode | 1070 |
	| politicalamericana | 2223 |
	| prisonwritings | 449 |
	| punkflyers | 2102 |
	| rackeralbums | 81 |
	| ragamala | 4123 |
	| railroad | 1655 |
	| repsslides | 1357 |
	| rmc | 19444 |
	| rudin | 517 |
	| seneca | 604 |
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
	| bol | 714 |
	| chla | 1073983 |
	| ezra | 26256 |
	| flow | 23590 |
	| hivebees | 34434 |
	| hearth | 667340 |
	| hunt | 124 |
	| izquierda | 105 |
	| liber | 1205 |
	| may | 224560 |
	| nur | 16504 |
	| regmi: | 19 |
	| sea | 4 |
	| sat | 42038 |
	| scott | 4541 |
	| witchcraft | 102 |
	| words | 446 |
    # other collections
    | art2301 | 55 |
    | claireholt | 1785 |
    # | cmip: | 24 | - collection removed
    | maps | 1616 |
