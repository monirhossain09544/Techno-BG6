.class public abstract Landroid/service/cloudsearch/CloudSearchService;
.super Landroid/app/Service;
.source "CloudSearchService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.cloudsearch.CloudSearchService"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 93
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    return-void
.end method

.method public abstract whitelist onSearch(Landroid/app/cloudsearch/SearchRequest;)V
.end method

.method public final whitelist returnResults(Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 3

    .line 88
    return-void
.end method
