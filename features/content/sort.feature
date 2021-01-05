# encoding: UTF-8
Feature: Check the visibility of content in development vs production

@content
@content-sort

@DIGCOLL-1797
Scenario Outline: I can sort search results by relavance, title, date, and author
    Given I browse collection nicknamed '<nickname>'
    When I sort the results by '<sort>'
    Then the first search result title contains "<title>"

Examples:
    | nickname | sort | title |
    | adwhite | relevance | Giza. Pyramids of Khafre and Menkaure (Chefren and Mykerinus) |
    | adwhite | year (descending) | Capitol |
    | adwhite | year (ascending) | Giza. Pyramids of Khafre and Menkaure (Chefren and Mykerinus) |
    | adwhite | title (a to z) | Fox and Goose |
    | adwhite | title (z to a) | Ávila. Vielles murailles, porte de l'Alcazar |
    | adwhite | author (a to z) | Angoulême Cathedral |
    | divinecomedy | relevance |  La Commedia. |
    | divinecomedy | year (descending) | Iconografia dantesca, Joseph Anton Koch |
    | divinecomedy | year (ascending) | La Commedia. |
    | divinecomedy | title (a to z) | Album dantesco contenente centoventicinque |
    | divinecomedy | title (z to a) | Opere di Dante Alighieri. v. 1-3. |
    | divinecomedy | author (a to z) | Album dantesco contenente centoventicinque tavole in rame |
    | rmc | relevance | Cuneiform tablet. |
    | rmc | year (descending) | Unleash |
    | rmc | year (ascending) | Cuneiform tablet. |
    # | rmc | title (a to z) | A girl in every apartment |
    | rmc | title (z to a) | Wine Cellars to be Sold. |
    # | rmc | author (a to z) | Le royaume de Siam |
