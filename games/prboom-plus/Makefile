# $NetBSD: Makefile,v 1.4 2018/07/04 13:40:19 jperkin Exp $

DISTNAME=	prboom-plus-2.5.1.3
PKGREVISION=	1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=prboom-plus/}

MAINTAINER=	drochner@NetBSD.org
HOMEPAGE=	http://prboom-plus.sourceforge.net/
COMMENT=	Multiplayer-capable and modified version of DOOM
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--with-waddir=${PREFIX}/share/doom

SUBST_CLASSES+=		gamesdir
SUBST_STAGE.gamesdir=	pre-configure
SUBST_MESSAGE.gamesdir=	Fixing hard-coded gamesdir
SUBST_FILES.gamesdir=	src/Makefile.in
SUBST_SED.gamesdir+=	-e '/^gamesdir =/ s;/games;/bin;g'

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../net/SDL_net/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
