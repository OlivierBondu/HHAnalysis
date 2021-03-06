#!/bin/bash

# Look out for conflicts between git and cmssw
if [ ! -f ${CMSSW_BASE}/src/.git/HEAD ];
then
    echo "You seem to be on Ingrid and CMSSW area appears not to be set up correctly. Check README carefully."
    echo
    return 1
fi
cd ${CMSSW_BASE}/src/cp3_llbb/HHAnalysis
# configure the origin repository
GITHUBUSERNAME=`git config user.github`
GITHUBUSERREMOTE=`git remote -v | grep upstream | awk '{print $2}' | head -n 1 | cut -d / -f 2`
git remote add origin git@github.com:${GITHUBUSERNAME}/${GITHUBUSERREMOTE}

# Add the remaining forks
git remote add OlivierBondu https://github.com/OlivierBondu/HHAnalysis.git
# have not yet forked, but are expected to:
git remote add blinkseb https://github.com/blinkseb/HHAnalysis.git
git remote add delaere https://github.com/delaere/HHAnalysis.git
git remote add BrieucF https://github.com/BrieucF/HHAnalysis.git
git remote add swertz https://github.com/swertz/HHAnalysis.git
git remote add vidalm https://github.com/vidalm/HHAnalysis.git
git remote add camillebeluffi https://github.com/camillebeluffi/HHAnalysis.git
git remote add acaudron https://github.com/acaudron/HHAnalysis.git
git remote add AlexandreMertens https://github.com/AlexandreMertens/HHAnalysis.git
