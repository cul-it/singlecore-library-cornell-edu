# encoding: UTF-8
Feature: Confirm that collections have the correct number of assets
@collections
@counts

    @digcoll-1657
    Scenario Outline: Check collection counts using facets
        Given I browse collection nicknamed '<nickname>'
        Then there should be <count> search results

    Examples:
    | nickname | count |
	| adler | 7498 |
	| adwhite | 1364 |
	| aerial | 111 |
	| ahearn | 111 |
	| anthrocollections | 1271 |
	| artifacts | 1673 |
	| bam | 2311 |
	| bastides | 111 |
	| beyondtaj | 6688 |
	| blaschka | 248 |
	| cast | 111 |
	| coins | 111 |
	| conzo | 111 |
	| culmaps | 111 |
	| dendro | 111 |
	| divinecomedy | 111 |
	| dynkin | 111 |
	| eleusis | 111 |
	| fallout | 111 |
	| gamelan | 111 |
	| gems | 111 |
	| harrisson | 111 |
	| hill | 111 |
	| hiphopflyers | 111 |
	| howell | 111 |
	| impersonator | 884 |
	| isbell | 111 |
	| iwo | 1740 |
	| japantheatre | 111 |
	| japanworld | 111 |
	| johnclairmiller | 111 |
	| johnclairmillericeland | 111 |
	| karma | 111 |
	| kassoy | 139 |
	| kingsbury | 522 |
	| kmoddl | 111 |
	| leuenberger | 111 |
	| lindsaycooper | 111 |
	| loewentheil | 111 |
	| obama | 111 |
	| page | 111 |
	| paniccioli | 111 |
	| pjmode | 111 |
	| politicalamericana | 111 |
	| prisonwritings | 449 |
	| punkflyers | 111 |
	| rackeralbums | 111 |
	| ragamala | 111 |
	| railroad | 111 |
	| repsslides | 111 |
	| rmc | 111 |
	| rudin | 111 |
	| seneca | 604 |
	| squeezes | 111 |
	| srilanka | 111 |
	| stereoscopes | 111 |
	| sterrett | 111 |
	| tamang | 111 |
	| tarr | 111 |
	| tellennasbeh | 52 |
	| vicos | 111 |
	| willardstraight | 111 |
    # dlxs collections
	| bol | 714 |
	| chla | 111 |
	| ezra | 111 |
	| flow | 111 |
	| hivebees | 111 |
	| hearth | 111 |
	| hunt | 111 |
	| izq: | 111 |
	| izquierda | 111 |
	| liber | 111 |
	| may | 111 |
	| nur | 111 |
	| regmi: | 111 |
	| sea | 111 |
	| sat | 111 |
	| scott | 111 |
	| witchcraft | 111 |
	| words | 111 |
    # other collections
    | art2301 | 55 |
