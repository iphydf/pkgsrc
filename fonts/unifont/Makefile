# $NetBSD: Makefile,v 1.10 2018/08/16 12:48:11 wiz Exp $

DISTNAME=	unifont-11.0.02
CATEGORIES=	fonts
MASTER_SITES=	http://unifoundry.com/pub/unifont/${DISTNAME}/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://unifoundry.com/unifont/index.html
COMMENT=	GNU Unifont - glyphs for all printable code points in Unicode 9.0 BMP
LICENSE=	gnu-gpl-v2 # or later

USE_TOOLS+=	gmake perl:run

MAKE_FLAGS+=	USRDIR=${PREFIX}
MAKE_FLAGS+=	CONSOLEDEST=${DESTDIR}${PREFIX}/share/fonts/consolefonts
MAKE_FLAGS+=	FONTDEST=${DESTDIR}${PREFIX}/share/fonts
MAKE_FLAGS+=	PKGMANDIR=${PKGMANDIR}

FONTS_DIRS.ttf+=	${PREFIX}/share/fonts/truetype/unifont
FONTS_DIRS.x11+=	${PREFIX}/share/fonts/X11/misc

MAKE_JOBS_SAFE=	no

REPLACE_PERL+=	src/bdfimplode
REPLACE_PERL+=	src/hex2bdf
REPLACE_PERL+=	src/hex2sfd
REPLACE_PERL+=	src/hexbraille
REPLACE_PERL+=	src/hexdraw
REPLACE_PERL+=	src/hexkinya
REPLACE_PERL+=	src/hexmerge
REPLACE_PERL+=	src/johab2ucs2
REPLACE_PERL+=	src/unifont-viewer
REPLACE_PERL+=	src/unifontchojung
REPLACE_PERL+=	src/unifontksx
REPLACE_PERL+=	src/unihex2png
REPLACE_PERL+=	src/unipng2hex

.include "../../mk/bsd.pkg.mk"
