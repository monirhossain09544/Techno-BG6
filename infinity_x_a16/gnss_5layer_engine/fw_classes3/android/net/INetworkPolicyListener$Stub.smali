.class public abstract Landroid/net/INetworkPolicyListener$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyListener.java"

# interfaces
.implements Landroid/net/INetworkPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyListener"

.field static final blacklist TRANSACTION_onAllowedTransportsChanged:I = 0x8

.field static final blacklist TRANSACTION_onBlockedReasonChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onMeteredIfacesChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onRestrictBackgroundChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onSubscriptionOverride:I = 0x5

.field static final blacklist TRANSACTION_onSubscriptionPlansChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onUidPoliciesChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onUidRulesChanged:I = 0x1


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.net.INetworkPolicyListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.net.INetworkPolicyListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkPolicyListener;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/net/INetworkPolicyListener;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/net/INetworkPolicyListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkPolicyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_26

    .line 112
    const/4 p0, 0x0

    return-object p0

    .line 108
    :pswitch_5
    const-string/jumbo p0, "onAllowedTransportsChanged"

    return-object p0

    .line 104
    :pswitch_9
    const-string/jumbo p0, "onBlockedReasonChanged"

    return-object p0

    .line 100
    :pswitch_d
    const-string/jumbo p0, "onSubscriptionPlansChanged"

    return-object p0

    .line 96
    :pswitch_11
    const-string/jumbo p0, "onSubscriptionOverride"

    return-object p0

    .line 92
    :pswitch_15
    const-string/jumbo p0, "onUidPoliciesChanged"

    return-object p0

    .line 88
    :pswitch_19
    const-string/jumbo p0, "onRestrictBackgroundChanged"

    return-object p0

    .line 84
    :pswitch_1d
    const-string/jumbo p0, "onMeteredIfacesChanged"

    return-object p0

    .line 80
    :pswitch_21
    const-string/jumbo p0, "onUidRulesChanged"

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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 356
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {p1}, Landroid/net/INetworkPolicyListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    nop

    .line 124
    const-string v0, "android.net.INetworkPolicyListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_17
    packed-switch p1, :pswitch_data_a2

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 208
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p3

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkPolicyListener$Stub;->onAllowedTransportsChanged([I[J)V

    .line 213
    goto/16 :goto_a0

    .line 196
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1, p3, p4}, Landroid/net/INetworkPolicyListener$Stub;->onBlockedReasonChanged(III)V

    .line 203
    goto :goto_a0

    .line 186
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    sget-object p3, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/telephony/SubscriptionPlan;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkPolicyListener$Stub;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V

    .line 191
    goto :goto_a0

    .line 172
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/net/INetworkPolicyListener$Stub;->onSubscriptionOverride(III[I)V

    .line 181
    goto :goto_a0

    .line 162
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkPolicyListener$Stub;->onUidPoliciesChanged(II)V

    .line 167
    goto :goto_a0

    .line 154
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1}, Landroid/net/INetworkPolicyListener$Stub;->onRestrictBackgroundChanged(Z)V

    .line 157
    goto :goto_a0

    .line 146
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, p1}, Landroid/net/INetworkPolicyListener$Stub;->onMeteredIfacesChanged([Ljava/lang/String;)V

    .line 149
    goto :goto_a0

    .line 136
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1, p3}, Landroid/net/INetworkPolicyListener$Stub;->onUidRulesChanged(II)V

    .line 141
    nop

    .line 220
    :goto_a0
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_6c
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
