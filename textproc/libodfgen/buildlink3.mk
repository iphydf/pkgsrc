# $NetBSD: buildlink3.mk,v 1.12 2018/08/16 18:54:32 adam Exp $

BUILDLINK_TREE+=	libodfgen

.if !defined(LIBODFGEN_BUILDLINK3_MK)
LIBODFGEN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libodfgen+=	libodfgen>=0.0.3
BUILDLINK_ABI_DEPENDS.libodfgen?=	libodfgen>=0.1.6nb7
BUILDLINK_PKGSRCDIR.libodfgen?=		../../textproc/libodfgen

.include "../../converters/librevenge/buildlink3.mk"
.include "../../converters/libwpd/buildlink3.mk"
.include "../../converters/libwpg/buildlink3.mk"
.endif	# LIBODFGEN_BUILDLINK3_MK

BUILDLINK_TREE+=	-libodfgen
