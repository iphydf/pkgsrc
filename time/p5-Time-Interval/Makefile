# $NetBSD: Makefile,v 1.17 2017/09/26 15:05:21 wiz Exp $

DISTNAME=	Time-Interval-1.234
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	time
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/A/AH/AHICOX/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/A/AH/AHICOX/
COMMENT=	Converts time intervals of days, hours, minutes, and seconds
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-TimeDate-[0-9]*:../../time/p5-TimeDate

PERL5_PACKLIST=	auto/Time/Interval/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
