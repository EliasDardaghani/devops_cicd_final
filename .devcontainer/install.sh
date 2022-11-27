#!/bin/bash
set -e

# git-flow make-less installer for *nix systems, by Rick Osborne
# Based on the git-flow core Makefile:
# http://github.com/nvie/gitflow/blob/master/Makefile

# Licensed under the same restrictions as git-flow:
# http://github.com/nvie/gitflow/blob/develop/LICENSE

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$INSTALL_PREFIX" ] ; then
	INSTALL_PREFIX="/usr/local/bin"
fi

if [ -z "$REPO_NAME" ] ; then
	REPO_NAME="$SCRIPT_DIR/gitflow"
fi

EXEC_FILES="git-flow"
SCRIPT_FILES="git-flow-init git-flow-feature git-flow-hotfix git-flow-release git-flow-support git-flow-version gitflow-common gitflow-shFlags"

echo "### gitflow no-make installer ###"
ls
install -v -d -m 0755 "$INSTALL_PREFIX"
for exec_file in $EXEC_FILES ; do
  install -v -m 0755 "$REPO_NAME/$exec_file" "$INSTALL_PREFIX"
done
for script_file in $SCRIPT_FILES ; do
  install -v -m 0644 "$REPO_NAME/$script_file" "$INSTALL_PREFIX"
done

