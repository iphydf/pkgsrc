# $NetBSD: Makefile,v 1.6 2018/03/12 11:17:13 wiz Exp $

DISTNAME=	harvid-0.8.1
PKGREVISION=	5
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_GITHUB:=x42/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://x42.github.com/harvid/
COMMENT=	HTTP Ardour Video Daemon
LICENSE=	gnu-gpl-v2

GITHUB_TAG=	v${PKGVERSION_NOREV}

USE_TOOLS+=	pkg-config gmake

MAKE_JOBS_SAFE=	no

PKGCONFIG_OVERRIDE+=	libharvid/harvid.pc.in

MAKE_FLAGS+=	mandir=${PREFIX}/${PKGMANDIR}
MAKE_FLAGS+=	VERSION=${PKGVERSION_NOREV}

.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../multimedia/ffmpeg3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
