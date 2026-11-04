.class public abstract Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardStateCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardStateCallback"

.field static final greylist-max-o TRANSACTION_onInputRestrictedStateChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onShowingStateChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onSimSecureStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onTrustedChanged:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;
    .registers 3

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    if-eqz v1, :cond_13

    .line 52
    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    return-object v0

    .line 54
    :cond_13
    new-instance v0, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 63
    packed-switch p0, :pswitch_data_12

    .line 83
    const/4 p0, 0x0

    return-object p0

    .line 79
    :pswitch_5
    const-string p0, "onTrustedChanged"

    return-object p0

    .line 75
    :pswitch_8
    const-string p0, "onInputRestrictedStateChanged"

    return-object p0

    .line 71
    :pswitch_b
    const-string p0, "onSimSecureStateChanged"

    return-object p0

    .line 67
    :pswitch_e
    const-string p0, "onShowingStateChanged"

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

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 235
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 90
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 94
    nop

    .line 95
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_17
    packed-switch p1, :pswitch_data_5c

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 136
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onTrustedChanged(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_5b

    .line 127
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onInputRestrictedStateChanged(Z)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_5b

    .line 118
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onSimSecureStateChanged(Z)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_5b

    .line 107
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onShowingStateChanged(ZI)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    nop

    .line 147
    :goto_5b
    return v1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3b
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method
