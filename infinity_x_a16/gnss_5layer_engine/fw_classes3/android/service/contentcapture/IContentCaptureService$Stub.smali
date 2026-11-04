.class public abstract Landroid/service/contentcapture/IContentCaptureService$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureService.java"

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityEvent:I = 0x8

.field static final blacklist TRANSACTION_onActivitySnapshot:I = 0x5

.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDataRemovalRequest:I = 0x6

.field static final blacklist TRANSACTION_onDataShared:I = 0x7

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onSessionFinished:I = 0x4

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/contentcapture/IContentCaptureService;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 80
    packed-switch p0, :pswitch_data_26

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 112
    :pswitch_5
    const-string/jumbo p0, "onActivityEvent"

    return-object p0

    .line 108
    :pswitch_9
    const-string/jumbo p0, "onDataShared"

    return-object p0

    .line 104
    :pswitch_d
    const-string/jumbo p0, "onDataRemovalRequest"

    return-object p0

    .line 100
    :pswitch_11
    const-string/jumbo p0, "onActivitySnapshot"

    return-object p0

    .line 96
    :pswitch_15
    const-string/jumbo p0, "onSessionFinished"

    return-object p0

    .line 92
    :pswitch_19
    const-string/jumbo p0, "onSessionStarted"

    return-object p0

    .line 88
    :pswitch_1d
    const-string/jumbo p0, "onDisconnected"

    return-object p0

    .line 84
    :pswitch_21
    const-string/jumbo p0, "onConnected"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
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

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 351
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    nop

    .line 128
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_17
    packed-switch p1, :pswitch_data_b4

    .line 216
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 209
    :pswitch_20
    sget-object p1, Landroid/service/contentcapture/ActivityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/contentcapture/ActivityEvent;

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 212
    goto/16 :goto_b2

    .line 199
    :pswitch_30
    sget-object p1, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/contentcapture/DataShareRequest;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/contentcapture/IDataShareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IDataShareCallback;

    move-result-object p3

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, p1, p3}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    .line 204
    goto :goto_b2

    .line 191
    :pswitch_47
    sget-object p1, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/contentcapture/DataRemovalRequest;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 194
    goto :goto_b2

    .line 181
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    sget-object p3, Landroid/service/contentcapture/SnapshotData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/contentcapture/SnapshotData;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p3}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    .line 186
    goto :goto_b2

    .line 173
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionFinished(I)V

    .line 176
    goto :goto_b2

    .line 157
    :pswitch_74
    sget-object p1, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/contentcapture/ContentCaptureContext;

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v6

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 168
    goto :goto_b2

    .line 151
    :pswitch_99
    move-object v2, p0

    invoke-virtual {p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDisconnected()V

    .line 152
    goto :goto_b2

    .line 140
    :pswitch_9e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onConnected(Landroid/os/IBinder;ZZ)V

    .line 147
    nop

    .line 219
    :goto_b2
    return v1

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_99
        :pswitch_74
        :pswitch_69
        :pswitch_56
        :pswitch_47
        :pswitch_30
        :pswitch_20
    .end packed-switch
.end method
