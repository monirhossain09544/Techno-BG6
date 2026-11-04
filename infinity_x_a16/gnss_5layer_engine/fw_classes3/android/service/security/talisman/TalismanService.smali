.class public abstract Landroid/service/security/talisman/TalismanService;
.super Landroid/app/Service;
.source "TalismanService.java"


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.security.talisman.TalismanService"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist addTalismans(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist onReportTalismanNeeds(Landroid/service/security/talisman/TalismanNeeds;)V
    .registers 2

    .line 92
    return-void
.end method

.method public final blacklist setTrustConfiguration(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 130
    return-void
.end method
