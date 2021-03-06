#!/bin/sh -l

set -e

input_paths="$1"

### Function Header ###########################################################
Header() {
  ##########
  # Prints #
  ##########
  echo "---------------------------------------------"
  echo "-- GitHub Actions TYPO3 PHP Codesniffer ---"
  echo "---------------------------------------------"
  echo "TYPO3 PHP Codesniffer source code can be found at:"
  echo " - https://github.com/TYPO3-Continuous-Integration/TYPO3-CI-PHP-Codesniffer"
  echo "---------------------------------------------"
}

### Function Lint #############################################################
Lint() {
  ##########
  # Prints #
  ##########
  echo "---------------------------------------------"
  echo "-- Running codesniffer... ---"
  echo "---------------------------------------------"
  sh -c "phpcs $input_paths"
}

#### Function Footer ###########################################################
Footer() {
  ##########
  # Prints #
  ##########
  echo "----------------------------------------------"
  echo "----------------------------------------------"
  echo "The script has completed"
  echo "----------------------------------------------"
  echo "----------------------------------------------"
}

################################################################################
############################### MAIN ###########################################
################################################################################

##########
# Header #
##########
Header

##########
# Lint #
##########
Lint

##########
# Footer #
##########
Footer
