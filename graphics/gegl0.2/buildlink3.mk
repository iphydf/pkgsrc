# $NetBSD: buildlink3.mk,v 1.6 2018/04/16 14:33:51 wiz Exp $

BUILDLINK_TREE+=	gegl

.if !defined(GEGL_BUILDLINK3_MK)
GEGL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gegl+=	gegl>=0.2.0<0.3.0
BUILDLINK_ABI_DEPENDS.gegl+=	gegl>=0.2.0nb24
BUILDLINK_PKGSRCDIR.gegl?=	../../graphics/gegl0.2

pkgbase := gegl
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.gegl:Msvg)
.include "../../graphics/librsvg/buildlink3.mk"
.endif

.include "../../graphics/babl/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # GEGL_BUILDLINK3_MK

BUILDLINK_TREE+=	-gegl
