# $NetBSD: Makefile,v 1.6 2018/05/05 15:39:27 taca Exp $

DISTNAME=	byebug-10.0.2
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/deivid-rodriguez/byebug
COMMENT=	Ruby 2.0 fast debugger - base + CLI
LICENSE=	2-clause-bsd

DEPENDS+=	${RUBY_PKGPREFIX}-readline>=${RUBY_VERSION_FULL}:../../devel/ruby-readline

RUBYGEM_OPTIONS+=	--format-executable

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
