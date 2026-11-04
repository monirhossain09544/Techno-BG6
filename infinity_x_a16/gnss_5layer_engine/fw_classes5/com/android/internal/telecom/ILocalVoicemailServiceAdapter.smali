.class public interface abstract Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter;
.super Ljava/lang/Object;
.source "ILocalVoicemailServiceAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter$Stub;,
        Lcom/android/internal/telecom/ILocalVoicemailServiceAdapter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ILocalVoicemailServiceAdapter"


# virtual methods
.method public abstract blacklist disconnectCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
