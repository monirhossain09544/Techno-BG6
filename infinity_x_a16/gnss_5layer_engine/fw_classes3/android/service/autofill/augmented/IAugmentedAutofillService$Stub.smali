.class public abstract Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.super Landroid/os/Binder;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDestroyAllFillWindowsRequest:I = 0x4

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onFillRequest:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo p0, "onDestroyAllFillWindowsRequest"

    return-object p0

    .line 80
    :pswitch_9
    const-string/jumbo p0, "onFillRequest"

    return-object p0

    .line 76
    :pswitch_d
    const-string/jumbo p0, "onDisconnected"

    return-object p0

    .line 72
    :pswitch_11
    const-string/jumbo p0, "onConnected"

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

    .line 238
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 100
    const-string v2, "android.service.autofill.augmented.IAugmentedAutofillService"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 101
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 104
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v3

    .line 107
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_82

    .line 155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 150
    :pswitch_26
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onDestroyAllFillWindowsRequest()V

    .line 151
    goto :goto_81

    .line 127
    :pswitch_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 133
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/ComponentName;

    .line 135
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 137
    sget-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 141
    sget-object v0, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/autofill/augmented/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v14

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    move-object v4, p0

    invoke-virtual/range {v4 .. v14}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    .line 146
    goto :goto_81

    .line 121
    :pswitch_6e
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onDisconnected()V

    .line 122
    goto :goto_81

    .line 112
    :pswitch_72
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v0, v4}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onConnected(ZZ)V

    .line 117
    nop

    .line 158
    :goto_81
    return v3

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_72
        :pswitch_6e
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method
