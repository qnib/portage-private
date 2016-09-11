# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Metrics collection framework written in go."
SLOT="0"


HOMEPAGE="https://github.com/qnib/qcollect/"
#SRC_URI="https://github.com/qnib/qcollect/archive/0.6.3.3.tar.gz"
SRC_URI="http://qnib.org/down/qcollect.tar"
LICENSE="AL2.0"

KEYWORDS="~x86"

DEPEND="=dev-lang/go-1.6.3"


src_compile() {
    cd ${WORKDIR}/${PF}/
    export GOPATH=$(mktemp -d -p /tmp/)
    go get -d
    pushd ${GOPATH}/src/github.com/davecheney/profile
    git checkout v0.1.0-rc.1
    popd
    pushd ${GOPATH}/src/github.com/docker/engine-api/
    git checkout remotes/origin/release/1.12
    popd
    go build || die
}

src_install() {
	local x
    mv ${P} ${PN}
	dobin "${PN}"
	rm -rf ${PN} || die
}
