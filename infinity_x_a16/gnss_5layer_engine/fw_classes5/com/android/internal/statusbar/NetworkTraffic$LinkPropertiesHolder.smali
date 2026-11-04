.class Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkPropertiesHolder"
.end annotation


# instance fields
.field private final blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private final blacklist mNetwork:Landroid/net/Network;


# direct methods
.method public constructor blacklist <init>(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mNetwork:Landroid/net/Network;

    .line 457
    iput-object p2, p0, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 458
    return-void
.end method


# virtual methods
.method public blacklist getLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public blacklist getNetwork()Landroid/net/Network;
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method
