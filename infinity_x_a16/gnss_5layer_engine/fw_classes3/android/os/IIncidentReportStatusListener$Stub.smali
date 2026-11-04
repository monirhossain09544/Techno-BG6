.class public abstract Landroid/os/IIncidentReportStatusListener$Stub;
.super Landroid/os/Binder;
.source "IIncidentReportStatusListener.java"

# interfaces
.implements Landroid/os/IIncidentReportStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentReportStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentReportStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentReportStatusListener"

.field static final greylist-max-o TRANSACTION_onReportFailed:I = 0x4

.field static final greylist-max-o TRANSACTION_onReportFinished:I = 0x3

.field static final greylist-max-o TRANSACTION_onReportSectionStatus:I = 0x2

.field static final greylist-max-o TRANSACTION_onReportStarted:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentReportStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.os.IIncidentReportStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IIncidentReportStatusListener;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/os/IIncidentReportStatusListener;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_16

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string/jumbo p0, "onReportFailed"

    return-object p0

    .line 80
    :pswitch_9
    const-string/jumbo p0, "onReportFinished"

    return-object p0

    .line 76
    :pswitch_d
    const-string/jumbo p0, "onReportSectionStatus"

    return-object p0

    .line 72
    :pswitch_11
    const-string/jumbo p0, "onReportStarted"

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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 212
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/os/IIncidentReportStatusListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    nop

    .line 100
    const-string v0, "android.os.IIncidentReportStatusListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_3c

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 131
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportFailed()V

    .line 132
    goto :goto_3a

    .line 126
    :pswitch_23
    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportFinished()V

    .line 127
    goto :goto_3a

    .line 117
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p3}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportSectionStatus(II)V

    .line 122
    goto :goto_3a

    .line 111
    :pswitch_36
    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportStarted()V

    .line 112
    nop

    .line 139
    :goto_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
