.class public interface abstract Lcom/android/internal/telecom/ILocalVoicemailService;
.super Ljava/lang/Object;
.source "ILocalVoicemailService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ILocalVoicemailService$Stub;,
        Lcom/android/internal/telecom/ILocalVoicemailService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ILocalVoicemailService"


# virtual methods
.method public abstract blacklist setAdapter(Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startLocalVoicemail(Landroid/telecom/ParcelableCall;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
