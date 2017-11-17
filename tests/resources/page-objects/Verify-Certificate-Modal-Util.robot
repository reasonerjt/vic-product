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
Documentation  This resource contains any keywords dealing with Verify Certificate modal page

*** Variables ***
# css locators
${vc-title}  css=.modal .modal .modal-title
${vc-button-yes}  css=.modal .modal .btn-primary

# expected text values
${vc-title-text}  Verify Certficate

*** Keywords ***
Verify Modal for Verify Certificate
    Wait Until Element Is Visible  ${vc-title}  timeout=${EXPLICIT_WAIT}
    Element Text Should Be  ${vc-title}  ${vc-title-text}

Click Yes On Verify Certificate
    Click Button  ${vc-button-yes}
