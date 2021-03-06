# Copyright 2016-2017 VMware, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

*** Settings ***
Documentation  This resource contains any keywords dealing with Registries page

*** Variables ***
# css locators
${rp-iframe}  css=.main-container iframe
${rp-title}  css=.content-area .title
${rp-registries-table}  css=.table

# expected text values
${rp-title-text}  Registries

*** Keywords ***
Select Registries Page Iframe
    Select Frame  ${cp-iframe}

Unselect Registries Page Iframe
    Unselect Frame

Verify Registries Page
    Wait Until Element Is Visible  ${rp-title}  timeout=${EXPLICIT_WAIT}
    Element Text Should Be  ${rp-title}  ${rp-title-text}

Verify Column Value In Registries Table
    [Arguments]  ${col_number}  ${expected}
    Wait Until Element Is Visible  ${rp-registries-table}  timeout=${EXPLICIT_WAIT}
    Table Column Should Contain  ${rp-registries-table}  ${col_number}  ${expected}
