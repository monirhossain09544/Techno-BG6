.class public Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemSecurityType"
.end annotation


# instance fields
.field public final whitelist groupCipher:I

.field public final whitelist keyManagement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelist pairwiseCipher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelist protocol:I


# direct methods
.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    iput p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->protocol:I

    .line 1599
    if-eqz p2, :cond_8

    .line 1600
    goto :goto_d

    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_d
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->keyManagement:Ljava/util/List;

    .line 1601
    if-eqz p3, :cond_12

    .line 1602
    goto :goto_17

    :cond_12
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->pairwiseCipher:Ljava/util/List;

    .line 1603
    iput p4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->groupCipher:I

    .line 1604
    return-void
.end method
