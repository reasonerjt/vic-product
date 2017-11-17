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
Documentation  This resource contains any keywords dealing with Getting Started UI page

*** Variables ***
# css locators
${gsp-alert-message}  css=.alert-text

# expected text values
${gsp-page-title}  VIC Appliance Getting Started
${gsp-install-complete-message}  Installation successful. Refer to the Post-install and Deployment tasks below.

*** Keywords ***
Navigate To Getting Started Page
    Go To  ${GS_PAGE_BASE_URL}

Verify Getting Started Page Title
    ${result}=  Get Title
    Should Contain  ${result}  ${gsp-page-title}

Verify Complete Installation Message
    Wait Until Element Is Visible  ${gsp-alert-message}  timeout=${EXPLICIT_WAIT}
    Element Text Should Be  ${gsp-alert-message}  ${gsp-install-complete-message}
