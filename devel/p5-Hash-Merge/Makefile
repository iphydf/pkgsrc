# $NetBSD: Makefile,v 1.17 2018/03/11 10:14:27 wiz Exp $

DISTNAME=	Hash-Merge-0.300
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Hash/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Hash-Merge/
COMMENT=	Perl 5 module to merges arbitrarily deep hashes
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Clone-Choose-[0-9]*:../../devel/p5-Clone-Choose

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Hash/Merge/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
