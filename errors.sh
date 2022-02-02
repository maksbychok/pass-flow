#!/bin/bash
source ./ui.sh

function psFolderError() {
    echo "${red}\$PS_FLOW_FOLDER is empty."
    echo "Please set \$PS_FLOW_FOLDER as env variable."
    echo "${bold}${green}export PS_FLOW_FOLDER=<path>${reset}"
}
