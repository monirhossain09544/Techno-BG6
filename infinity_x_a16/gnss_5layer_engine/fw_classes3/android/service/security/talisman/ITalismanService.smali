.class public interface abstract Landroid/service/security/talisman/ITalismanService;
.super Ljava/lang/Object;
.source "ITalismanService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/security/talisman/ITalismanService$Stub;,
        Landroid/service/security/talisman/ITalismanService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.security.talisman.ITalismanService"


# virtual methods
.method public abstract blacklist reportTalismanNeeds(Landroid/service/security/talisman/TalismanNeeds;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
