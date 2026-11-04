.class public abstract Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.super Landroid/os/Binder;
.source "ISpellCheckerSession.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ISpellCheckerSession"

.field static final greylist-max-o TRANSACTION_onCancel:I = 0x3

.field static final greylist-max-o TRANSACTION_onClose:I = 0x4

.field static final greylist-max-o TRANSACTION_onGetSentenceSuggestionsMultiple:I = 0x2

.field static final greylist-max-o TRANSACTION_onGetSuggestionsMultiple:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSession;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/textservice/ISpellCheckerSession;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Lcom/android/internal/textservice/ISpellCheckerSession;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string p0, "onClose"

    return-object p0

    .line 76
    :pswitch_8
    const-string p0, "onCancel"

    return-object p0

    .line 72
    :pswitch_b
    const-string p0, "onGetSentenceSuggestionsMultiple"

    return-object p0

    .line 68
    :pswitch_e
    const-string p0, "onGetSuggestionsMultiple"

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

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_17
    packed-switch p1, :pswitch_data_52

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 134
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onClose()V

    .line 135
    goto :goto_51

    .line 129
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onCancel()V

    .line 130
    goto :goto_51

    .line 120
    :pswitch_27
    sget-object p1, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/textservice/TextInfo;

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    .line 125
    goto :goto_51

    .line 108
    :pswitch_3a
    sget-object p1, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/textservice/TextInfo;

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    .line 115
    nop

    .line 142
    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
