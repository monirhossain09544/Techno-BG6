.class public abstract Landroid/os/IHintSession$Stub;
.super Landroid/os/Binder;
.source "IHintSession.java"

# interfaces
.implements Landroid/os/IHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_associateToLayers:I = 0x7

.field static final blacklist TRANSACTION_close:I = 0x3

.field static final blacklist TRANSACTION_reportActualWorkDuration:I = 0x2

.field static final blacklist TRANSACTION_reportActualWorkDuration2:I = 0x6

.field static final blacklist TRANSACTION_sendHint:I = 0x4

.field static final blacklist TRANSACTION_setMode:I = 0x5

.field static final blacklist TRANSACTION_updateTargetWorkDuration:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.os.IHintSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.os.IHintSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IHintSession;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/os/IHintSession;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/os/IHintSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IHintSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 74
    packed-switch p0, :pswitch_data_20

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 102
    :pswitch_5
    const-string p0, "associateToLayers"

    return-object p0

    .line 98
    :pswitch_8
    const-string/jumbo p0, "reportActualWorkDuration2"

    return-object p0

    .line 94
    :pswitch_c
    const-string/jumbo p0, "setMode"

    return-object p0

    .line 90
    :pswitch_10
    const-string/jumbo p0, "sendHint"

    return-object p0

    .line 86
    :pswitch_14
    const-string p0, "close"

    return-object p0

    .line 82
    :pswitch_17
    const-string/jumbo p0, "reportActualWorkDuration"

    return-object p0

    .line 78
    :pswitch_1b
    const-string/jumbo p0, "updateTargetWorkDuration"

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 303
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 113
    invoke-static {p1}, Landroid/os/IHintSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    nop

    .line 118
    const-string v0, "android.os.IHintSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_17
    packed-switch p1, :pswitch_data_72

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1}, Landroid/os/IHintSession$Stub;->associateToLayers([Landroid/os/IBinder;)V

    .line 182
    goto :goto_71

    .line 171
    :pswitch_2a
    sget-object p1, Landroid/hardware/power/WorkDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/power/WorkDuration;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Landroid/os/IHintSession$Stub;->reportActualWorkDuration2([Landroid/hardware/power/WorkDuration;)V

    .line 174
    goto :goto_71

    .line 161
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1, p3}, Landroid/os/IHintSession$Stub;->setMode(IZ)V

    .line 166
    goto :goto_71

    .line 153
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, p1}, Landroid/os/IHintSession$Stub;->sendHint(I)V

    .line 156
    goto :goto_71

    .line 147
    :pswitch_53
    invoke-virtual {p0}, Landroid/os/IHintSession$Stub;->close()V

    .line 148
    goto :goto_71

    .line 138
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, p3}, Landroid/os/IHintSession$Stub;->reportActualWorkDuration([J[J)V

    .line 143
    goto :goto_71

    .line 130
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p3, p4}, Landroid/os/IHintSession$Stub;->updateTargetWorkDuration(J)V

    .line 133
    nop

    .line 189
    :goto_71
    return v1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_66
        :pswitch_57
        :pswitch_53
        :pswitch_48
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
