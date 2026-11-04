.class public abstract Landroid/net/NetworkSpecifier;
.super Ljava/lang/Object;
.source "NetworkSpecifier.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 51
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getApplicableRedactions()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist redact()Landroid/net/NetworkSpecifier;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 81
    return-object p0
.end method

.method public whitelist redact(J)Landroid/net/NetworkSpecifier;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 124
    return-object p0
.end method
