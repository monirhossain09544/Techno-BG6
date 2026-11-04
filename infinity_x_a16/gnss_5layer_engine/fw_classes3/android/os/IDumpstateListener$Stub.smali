.class public abstract Landroid/os/IDumpstateListener$Stub;
.super Landroid/os/Binder;
.source "IDumpstateListener.java"

# interfaces
.implements Landroid/os/IDumpstateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x2

.field static final blacklist TRANSACTION_onFinished:I = 0x3

.field static final blacklist TRANSACTION_onProgress:I = 0x1

.field static final blacklist TRANSACTION_onScreenshotTaken:I = 0x4

.field static final blacklist TRANSACTION_onUiIntensiveBugreportDumpsFinished:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.os.IDumpstateListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.os.IDumpstateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDumpstateListener;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/os/IDumpstateListener;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/os/IDumpstateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_1a

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 107
    :pswitch_5
    const-string/jumbo p0, "onUiIntensiveBugreportDumpsFinished"

    return-object p0

    .line 103
    :pswitch_9
    const-string/jumbo p0, "onScreenshotTaken"

    return-object p0

    .line 99
    :pswitch_d
    const-string/jumbo p0, "onFinished"

    return-object p0

    .line 95
    :pswitch_11
    const-string/jumbo p0, "onError"

    return-object p0

    .line 91
    :pswitch_15
    const-string/jumbo p0, "onProgress"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 272
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Landroid/os/IDumpstateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    nop

    .line 123
    const-string v0, "android.os.IDumpstateListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_17
    packed-switch p1, :pswitch_data_50

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/IDumpstateListener$Stub;->onUiIntensiveBugreportDumpsFinished()V

    .line 167
    goto :goto_4f

    .line 159
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onScreenshotTaken(Z)V

    .line 162
    goto :goto_4f

    .line 151
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onFinished(Ljava/lang/String;)V

    .line 154
    goto :goto_4f

    .line 143
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onError(I)V

    .line 146
    goto :goto_4f

    .line 135
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Landroid/os/IDumpstateListener$Stub;->onProgress(I)V

    .line 138
    nop

    .line 174
    :goto_4f
    return v1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_44
        :pswitch_39
        :pswitch_2e
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
