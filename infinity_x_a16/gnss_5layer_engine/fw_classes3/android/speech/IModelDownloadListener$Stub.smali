.class public abstract Landroid/speech/IModelDownloadListener$Stub;
.super Landroid/os/Binder;
.source "IModelDownloadListener.java"

# interfaces
.implements Landroid/speech/IModelDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IModelDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IModelDownloadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onProgress:I = 0x1

.field static final blacklist TRANSACTION_onScheduled:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.speech.IModelDownloadListener"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IModelDownloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/speech/IModelDownloadListener;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    const-string v0, "android.speech.IModelDownloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/speech/IModelDownloadListener;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/speech/IModelDownloadListener;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/speech/IModelDownloadListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/speech/IModelDownloadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 83
    packed-switch p0, :pswitch_data_16

    .line 103
    const/4 p0, 0x0

    return-object p0

    .line 99
    :pswitch_5
    const-string/jumbo p0, "onError"

    return-object p0

    .line 95
    :pswitch_9
    const-string/jumbo p0, "onScheduled"

    return-object p0

    .line 91
    :pswitch_d
    const-string/jumbo p0, "onSuccess"

    return-object p0

    .line 87
    :pswitch_11
    const-string/jumbo p0, "onProgress"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 240
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 110
    invoke-static {p1}, Landroid/speech/IModelDownloadListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 114
    nop

    .line 115
    const-string v0, "android.speech.IModelDownloadListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 122
    :cond_17
    packed-switch p1, :pswitch_data_3e

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 145
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1}, Landroid/speech/IModelDownloadListener$Stub;->onError(I)V

    .line 148
    goto :goto_3d

    .line 139
    :pswitch_2a
    invoke-virtual {p0}, Landroid/speech/IModelDownloadListener$Stub;->onScheduled()V

    .line 140
    goto :goto_3d

    .line 134
    :pswitch_2e
    invoke-virtual {p0}, Landroid/speech/IModelDownloadListener$Stub;->onSuccess()V

    .line 135
    goto :goto_3d

    .line 127
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/speech/IModelDownloadListener$Stub;->onProgress(I)V

    .line 130
    nop

    .line 155
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
