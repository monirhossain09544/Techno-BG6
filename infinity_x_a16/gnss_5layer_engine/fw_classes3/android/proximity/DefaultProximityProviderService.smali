.class public Landroid/proximity/DefaultProximityProviderService;
.super Landroid/app/Service;
.source "DefaultProximityProviderService.java"


# static fields
.field private static final blacklist sProximityProviderServiceImpl:Landroid/proximity/IProximityProviderService$Stub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/proximity/DefaultProximityProviderService$1;

    invoke-direct {v0}, Landroid/proximity/DefaultProximityProviderService$1;-><init>()V

    sput-object v0, Landroid/proximity/DefaultProximityProviderService;->sProximityProviderServiceImpl:Landroid/proximity/IProximityProviderService$Stub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 72
    sget-object p1, Landroid/proximity/DefaultProximityProviderService;->sProximityProviderServiceImpl:Landroid/proximity/IProximityProviderService$Stub;

    return-object p1
.end method
