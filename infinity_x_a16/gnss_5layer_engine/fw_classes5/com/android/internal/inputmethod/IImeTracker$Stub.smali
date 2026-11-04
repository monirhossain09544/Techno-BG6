.class public abstract Lcom/android/internal/inputmethod/IImeTracker$Stub;
.super Landroid/os/Binder;
.source "IImeTracker.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IImeTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishTrackingPendingRequests:I = 0x9

.field static final blacklist TRANSACTION_onCancelled:I = 0x4

.field static final blacklist TRANSACTION_onDispatched:I = 0x7

.field static final blacklist TRANSACTION_onFailed:I = 0x3

.field static final blacklist TRANSACTION_onHidden:I = 0x6

.field static final blacklist TRANSACTION_onProgress:I = 0x2

.field static final blacklist TRANSACTION_onShown:I = 0x5

.field static final blacklist TRANSACTION_onStart:I = 0x1

.field static final blacklist TRANSACTION_waitUntilNoPendingRequests:I = 0x8


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    nop

    .line 127
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    if-eqz p1, :cond_d

    .line 121
    iput-object p1, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 122
    return-void

    .line 119
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IImeTracker;
    .registers 3

    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IImeTracker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IImeTracker;

    if-eqz v1, :cond_13

    .line 140
    check-cast v0, Lcom/android/internal/inputmethod/IImeTracker;

    return-object v0

    .line 142
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 151
    packed-switch p0, :pswitch_data_20

    .line 191
    const/4 p0, 0x0

    return-object p0

    .line 187
    :pswitch_5
    const-string p0, "finishTrackingPendingRequests"

    return-object p0

    .line 183
    :pswitch_8
    const-string p0, "waitUntilNoPendingRequests"

    return-object p0

    .line 179
    :pswitch_b
    const-string p0, "onDispatched"

    return-object p0

    .line 175
    :pswitch_e
    const-string p0, "onHidden"

    return-object p0

    .line 171
    :pswitch_11
    const-string p0, "onShown"

    return-object p0

    .line 167
    :pswitch_14
    const-string p0, "onCancelled"

    return-object p0

    .line 163
    :pswitch_17
    const-string p0, "onFailed"

    return-object p0

    .line 159
    :pswitch_1a
    const-string p0, "onProgress"

    return-object p0

    .line 155
    :pswitch_1d
    const-string p0, "onStart"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 146
    return-object p0
.end method

.method protected blacklist finishTrackingPendingRequests_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 523
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 527
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 198
    invoke-static {p1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    nop

    .line 203
    const-string v3, "com.android.internal.inputmethod.IImeTracker"

    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 204
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v11

    .line 210
    :cond_17
    packed-switch p1, :pswitch_data_d8

    .line 308
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 301
    :pswitch_1f
    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->finishTrackingPendingRequests(Lcom/android/internal/infra/AndroidFuture;)V

    .line 304
    goto/16 :goto_d7

    .line 291
    :pswitch_2f
    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->waitUntilNoPendingRequests(Lcom/android/internal/infra/AndroidFuture;J)V

    .line 296
    goto/16 :goto_d7

    .line 283
    :pswitch_43
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 286
    goto/16 :goto_d7

    .line 275
    :pswitch_53
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 278
    goto/16 :goto_d7

    .line 267
    :pswitch_63
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 270
    goto :goto_d7

    .line 257
    :pswitch_72
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 262
    goto :goto_d7

    .line 247
    :pswitch_85
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 252
    goto :goto_d7

    .line 237
    :pswitch_98
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 242
    goto :goto_d7

    .line 215
    :pswitch_ab
    sget-object v1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->onStart(Landroid/view/inputmethod/ImeTracker$Token;IIIIZJJ)V

    .line 232
    nop

    .line 311
    :goto_d7
    return v11

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_98
        :pswitch_85
        :pswitch_72
        :pswitch_63
        :pswitch_53
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist waitUntilNoPendingRequests_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/internal/inputmethod/IImeTracker$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 518
    return-void
.end method
