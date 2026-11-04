.class public abstract Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceActionCheckCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceActionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceActionCheckCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceActionCheckCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onComplete:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.internal.app.IVoiceActionCheckCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;
    .registers 3

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_4
    const-string v0, "com.android.internal.app.IVoiceActionCheckCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IVoiceActionCheckCallback;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Lcom/android/internal/app/IVoiceActionCheckCallback;

    return-object v0

    .line 45
    :cond_13
    new-instance v0, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 54
    packed-switch p0, :pswitch_data_8

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 58
    :pswitch_5
    const-string p0, "onComplete"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 69
    invoke-static {p1}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    nop

    .line 74
    const-string v0, "com.android.internal.app.IVoiceActionCheckCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 81
    :cond_17
    packed-switch p1, :pswitch_data_2c

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 86
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->onComplete(Ljava/util/List;)V

    .line 89
    nop

    .line 96
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
