# $NetBSD: Makefile,v 1.6 2018/06/12 17:50:22 bsiegert Exp $

DISTNAME=	go-homedir-0.0.20161203
MASTER_SITES=	${MASTER_SITE_GITHUB:=mitchellh/}
PKGREVISION=	3
CATEGORIES=	devel
GITHUB_TAG=	b8bc1bf767474819792c23f32d8286a45736f1c6

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/mitchellh/go-homedir
COMMENT=	Go library for home directory information
LICENSE=	mit

GO_DIST_BASE=	${DISTNAME}
GO_DIST_BASE=	${GITHUB_PROJECT}-${GITHUB_TAG}
GO_SRCPATH=	github.com/mitchellh/go-homedir

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
