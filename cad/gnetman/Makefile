# $NetBSD: Makefile,v 1.18 2018/03/12 11:16:07 wiz Exp $
#

DISTNAME=		gnetman-11Feb05
PKGNAME=		gnetman-20050211
PKGREVISION=		7
CATEGORIES=		cad
#MASTER_SITES=		#http://www.viasic.com/opensource/

MAINTAINER=		dmcmahill@NetBSD.org
#HOMEPAGE=		http://www.viasic.com/opensource/
COMMENT=		Advanced Netlister and Netlist Manipulation Database for gEDA

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
CONFIGURE_ENV+=		TCL_CONFIG_SH=${BUILDLINK_PREFIX.tcl}/lib/tclConfig.sh

post-extract:
	${RM} ${WRKSRC}/src/include/tcl.h
	${RM} ${WRKSRC}/src/include/tk.h

CPPFLAGS+=	-DUSE_INTERP_RESULT -DUSE_INTERP_ERRORLINE

.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
