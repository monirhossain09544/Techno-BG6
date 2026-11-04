.class Landroid/os/StrictMode$5;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$VmPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api onPathAccess(Ljava/lang/String;)V
    .registers 5

    .line 2006
    if-nez p1, :cond_3

    return-void

    .line 2009
    :cond_3
    const-string v0, "/data/user/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2010
    const-string v0, "/data/media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2011
    const-string v0, "/data/system_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2012
    const-string v0, "/data/misc_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2013
    const-string v0, "/data/vendor_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2014
    const-string v0, "/storage/emulated/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_41

    .line 2025
    :cond_34
    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2026
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/StrictMode;->-$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V

    goto :goto_64

    .line 2015
    :cond_41
    :goto_41
    const/16 v0, 0x2f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2016
    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2017
    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2018
    const/4 v1, -0x1

    if-ne v0, v1, :cond_56

    return-void

    .line 2021
    :cond_56
    :try_start_56
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2022
    invoke-static {p1, v0}, Landroid/os/StrictMode;->-$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_61} :catch_62

    .line 2024
    goto :goto_63

    .line 2023
    :catch_62
    move-exception p1

    .line 2025
    :cond_63
    :goto_63
    nop

    .line 2028
    :goto_64
    return-void
.end method
