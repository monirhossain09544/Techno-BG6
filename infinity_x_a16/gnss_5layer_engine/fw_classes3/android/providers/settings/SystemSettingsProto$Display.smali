.class public final Landroid/providers/settings/SystemSettingsProto$Display;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Display"
.end annotation


# static fields
.field public static final blacklist CV_DYNAMIC_ENABLED:J = 0x10b00000002L

.field public static final blacklist CV_ENABLED:J = 0x10b00000001L

.field public static final blacklist CV_PREFERRED_INTENSITY:J = 0x10b00000003L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
