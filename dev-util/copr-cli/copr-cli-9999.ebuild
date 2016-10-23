# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 )
GITHUB_USER=fedora-copr
GITHUB_PROJECT=copr

inherit fedora-github distutils-r1

DESCRIPTION="An alternative build system for the Fedora project"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

COMMON_DEPEND="
	${PYTHON_DEPS}
	dev-python/copr
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
	dev-python/marshmallow[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${P}/cli"
