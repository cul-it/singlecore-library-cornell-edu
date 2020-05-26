# encoding: UTF-8
Feature: Asset regular fields

    Scenario Outline: Check the values of common fields across assets

    @fields
    @fields-regular
    Scenario Outline: View regular field labels across assets
        Given I go to asset id '<id>'
            Then I should see the field labeled '<new_label>'
            And the field labeled '<new_label>' should begin with '<starting>'

    Examples:
    | label | new_label | id | starting |
    #| Identifier | ID Number | 3851180 | AiguesMortes1966SouthWallFacingChannel.jpg |
    #| Photographer | Photographer | 3851180 | Reps, John William (American urban planning historian) |
    | Archival Collection  | Archival Collection  | 26303757 | Adler Hip Hop Archive |
    | Collecting Program  | Collecting Program  | 26303879| Cornell University Hip Hop Collection |
    | Collection | Collection | 926992 | Joe Conzo Jr. Archive |
    | Coordinates | Coordinates | 3851180 | 43.564966,4.189368 |
    | Country | Country | 3851180 | France |
    | Date  | Date  | 26303879 | 1998-08-01 |
    | Date | Date | 26305773 | 1989-09 |
    | Description | Description | 595408 | "George and Priscilla Slocum Galleries Given |
    | Founder | Founder | 3851180 | Louis IX |
    | Identifier | ID Number | 595408 | 100_1398 |
    | Image View Description | Image View Description | 595408 | Front View |
    | Image View Type | Image View Type | 595408 | General |
    | Latitude | Latitude | 3851180 | 43.564966 |
    | Location | Location | 3851180 | Gard, Languedoc-Roussillon, France |
    | Longitude | Longitude | 3851180 | 4.189368 |
    | Repository  | Repository  | 26303879 | Division of Rare and Manuscript Collections, Cornell University Library |
    | Repository Location | Location | 595408 | Shoellkopf House |
    | Rights  | Rights  | 26303879 | This image was created by Cornell University Library |
    | Rights | Rights | 595408 | The content in |
    | Site | Site | 3851180 | Aigues-Mortes |
    | Source  | Source  | 26303879 | Insite |
    | Subject  | Subject  | 3851177 | Bastides |
    | Subject | Subject | 595408 | Slocum, George W. |
    | Title  | Title  | 26303879 | Beastie Boys: Hello |
    | Work Type  | Work Type  | 26303879 | Article |
    | Work Type | Work Type | 3851180 | color photographs |
