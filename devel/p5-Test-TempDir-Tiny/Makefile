# $NetBSD: Makefile,v 1.6 2018/07/31 10:56:11 wen Exp $

DISTNAME=	Test-TempDir-Tiny-0.018
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Test-TempDir-Tiny/
COMMENT=	Temporary directories that stick around when tests fail
LICENSE=	apache-2.0

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Test/TempDir/Tiny/.packlist

RUN_DEPENDS=	p5-File-Temp>=0.23.08:../../devel/p5-File-Temp

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
