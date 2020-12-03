# encoding: UTF-8
Feature: Confirm that collections have collection level metadata
@collections
@collection-metadata

@DIGCOLL-1840
Scenario Outline: When I'm looking at an asset, I would like to be able to go to the asset's collection's web page.
Given I browse collection nicknamed '<nickname>'
	And I sort the results by "title (a to z)"
    And I click on the first search result
    Then I should see link "Digital collection website" leading to "<website>"

Examples:
    | nickname | website |
	# | bol | url |
	# | chla | url |
	# | ezra | url |
	# | flow | url |
	# | hearth | url |
	# | hivebees | url |
	# | hunt | url |
	# | izquierda | url |
	# | liber | url |
	# | may | url |
	# | nur | url |
	# | sat | url |
	# | scott | url |
	# | sea | url |
	# | witchcraft | url |
	# | words | url |
	| adler | http://rmc.library.cornell.edu/hiphop/adler.html |
	| adwhite | http://resolver.library.cornell.edu/misc/4077228 |
	| aerial | /collections/aerialny |
	| ahearn | http://rmc.library.cornell.edu/hiphop/ |
	| anthrocollections | https://anthrocollections.library.cornell.edu/ |
	| artifacts | /collections/artifactsandart |
	| bam | /collections/afrika-bambaataa |
	| bastides | http://hdl.handle.net/1813.001/9225346a |
	| beyondtaj | http://beyondthetaj.library.cornell.edu |
	| blaschka | /collections/blaschka |
	| cast | http://hdl.handle.net/1813.001/8946675e |
	| coins | http://hdl.handle.net/1813.001/8946679a |
	| conzo | http://rmc.library.cornell.edu/hiphop/conzo.html |
	| culmaps | https://olinuris.library.cornell.edu/collections/maps/sections/digital-images |
	| dendro | /collections/nys-dendro |
	| divinecomedy | http://resolver.library.cornell.edu/misc/7889273 |
	| dynkin | /collections/dynkin |
	| eleusis | http://resolver.library.cornell.edu/misc/5696261 |
	| fallout | /collections/fallout |
	| gamelan | /collections/indonesianmusic |
	| gems | http://hdl.handle.net/1813.001/8788389a |
	| harrisson | /collections/harrisson |
	# | hill | url |
	| hiphopflyers | http://rmc.library.cornell.edu/hiphop/flyers.html |
	| howell | http://resolver.library.cornell.edu/misc/5618018 |
	| impersonator | /collections/impersonator-postcards |
	| isbell | http://resolver.library.cornell.edu/misc/5745591 |
	| iwo | /collections/iwo-jpfo |
	| japantheatre | http://hdl.handle.net/1813.001/7927766 |
	| japanworld | http://hdl.handle.net/1813.001/7927747 |
	| johnclairmiller | https://johnclairmiller.library.cornell.edu/ |
	| johnclairmillericeland | http://johnclairmiller.library.cornell.edu |
	# | karma | url |
	# | kassoy | url |
	| kingsbury | http://rmc.library.cornell.edu/alisonmasonkingsbury/ |
	| kmoddl | http://resolver.library.cornell.edu/misc/5146902 |
	# | leuenberger | url |
	| lindsaycooper | /collections/lindsaycooper |
	| loewentheil | https://rare.library.cornell.edu/collections/photography |
	| obama | http://rmc.library.cornell.edu/obama/ |
	| page | /collections/art2301 |
	| paniccioli | /collections/paniccioli |
	| pjmode | http://persuasivemaps.library.cornell.edu/ |
	| politicalamericana | http://resolver.library.cornell.edu/misc/5458453 |
	| prisonwritings | /collections/prison-reform |
	| punkflyers | /collections/punkflyers |
	| rackeralbums | http://hdl.handle.net/1813.001/8293942 |
	| ragamala | /collections/ragamala |
	| railroad | /collections/railroad |
	| repsslides | http://hdl.handle.net/1813.001/8268684 |
	| rmc | http://rmc-images.library.cornell.edu/ |
	| rudin | /collections/rudin |
	| seneca | /collections/seneca |
	| squeezes | http://hdl.handle.net/1813.001/8946690d |
	| srilanka | /collections/srilanka |
	| stereoscopes | /collections/stereoscopes |
	| sterrett | http://hdl.handle.net/1813.001/9861575a |
	| tamang | /collections/tamang |
	| tarr | http://hdl.handle.net/1813.001/9245088 |
	| tellennasbeh | /collections/tell-en-nasbeh |
	| vicos | http://resolver.library.cornell.edu/misc/6802783 |
	| willardstraight | http://resolver.library.cornell.edu/misc/5861081 |
	# | art2301 | url |
	# | claireholt | url |


