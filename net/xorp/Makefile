# $NetBSD: Makefile,v 1.33 2016/03/05 11:29:14 jperkin Exp $
#

DISTNAME=		xorp-1.6
PKGREVISION=		6
CATEGORIES=		net
MASTER_SITES=		http://www.xorp.org/releases/1.6/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.xorp.org/
COMMENT=		The eXtensible Open Router Platform

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake flex
CONFIGURE_ARGS+=	--with-openssl=${BUILDLINK_PREFIX.openssl:Q}

# The xorp people insist on their own PREFIX.
# See http://www.xorp.org/bugzilla/show_bug.cgi?id=91
#
GNU_CONFIGURE_PREFIX=	${PREFIX}/xorp

# Test target require bash and python (really it, not python2.4 and so on).
TEST_TARGET=		check

pre-build:
	cd ${WRKSRC}/policy && ${MAKE} lex
	cd ${WRKSRC}/policy/backend && ${MAKE} lex
	cd ${WRKSRC}/policy/test && ${MAKE} lex
	cd ${WRKSRC}/rtrmgr && ${MAKE} lex

# This used to be set for clang only, but it's needed for gcc as well
# these days. See PR 36974; also there are other warnings with gcc48.
BUILDLINK_TRANSFORM+=	rm:-Werror

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
