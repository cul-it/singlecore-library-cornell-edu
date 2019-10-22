# encoding: UTF-8
Feature: Asset regular fields

    Scenario Outline: Check the values of common fields across assets

    @fields
    @fields-regular
    Scenario Outline: View regular field labels across assets
        Given I go to asset id '<id>'
            Then I should see the field labeled '<label>'
            And the field labeled '<label>' should begin with '<starting>'

    Examples:
    | id | label | starting |
    | 26303879 | Title | Beastie Boys: Hello |
    | 26303879 | Collection | Adler Hip Hop Archive |
    | 26303879 | Date | 1998-08-01 |
    | 26303879 | Work Type | Article |
    | 9372038 | Subject | Public Enemy |
    | 26303879 | Source | Insite |
    | 26303879 | Repository | Division of Rare and Manuscript Collections, Cornell University Library |
    | 26303879 | Collecting Program | Cornell University Hip Hop Collection |
    | 26303879 | Rights | This image was created by Cornell University Library |


