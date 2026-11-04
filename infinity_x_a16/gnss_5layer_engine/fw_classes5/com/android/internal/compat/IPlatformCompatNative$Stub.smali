.class public abstract Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompatNative.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompatNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompatNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x3

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x4

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompatNative;
    .registers 3

    .line 114
    if-nez p0, :cond_4

    .line 115
    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_4
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompatNative;

    if-eqz v1, :cond_13

    .line 119
    check-cast v0, Lcom/android/internal/compat/IPlatformCompatNative;

    return-object v0

    .line 121
    :cond_13
    new-instance v0, Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 130
    packed-switch p0, :pswitch_data_12

    .line 150
    const/4 p0, 0x0

    return-object p0

    .line 146
    :pswitch_5
    const-string p0, "isChangeEnabledByUid"

    return-object p0

    .line 142
    :pswitch_8
    const-string p0, "isChangeEnabledByPackageName"

    return-object p0

    .line 138
    :pswitch_b
    const-string p0, "reportChangeByUid"

    return-object p0

    .line 134
    :pswitch_e
    const-string p0, "reportChangeByPackageName"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 125
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 380
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 157
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    nop

    .line 162
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v1

    .line 169
    :cond_17
    packed-switch p1, :pswitch_data_78

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->isChangeEnabledByUid(JI)Z

    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_77

    .line 198
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    goto :goto_77

    .line 187
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->reportChangeByUid(JI)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_77

    .line 174
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    nop

    .line 226
    :goto_77
    return v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4f
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
