.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final blacklist PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegation:I = 0x1c

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegationAsync:I = 0x1d

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_addVirtualStylusIdForTestSession:I = 0x1f

.field static final blacklist TRANSACTION_getCurrentInputMethodInfoAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0x10

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final blacklist TRANSACTION_getEnabledInputMethodListLegacy:I = 0x6

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x7

.field static final blacklist TRANSACTION_getImeTrackerService:I = 0x21

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x3

.field static final blacklist TRANSACTION_getInputMethodListLegacy:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x13

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x8

.field static final blacklist TRANSACTION_hideSoftInputFromServerForTest:I = 0x9

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0xd

.field static final blacklist TRANSACTION_isStylusHandwritingAvailableAsUser:I = 0x1e

.field static final blacklist TRANSACTION_onImeSwitchButtonClickFromSystem:I = 0xe

.field static final blacklist TRANSACTION_prepareStylusHandwritingDelegation:I = 0x1b

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindow:I = 0x15

.field static final blacklist TRANSACTION_reportPerceptible:I = 0x14

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x11

.field static final blacklist TRANSACTION_setAllowedImesByPolicyForTest:I = 0x22

.field static final blacklist TRANSACTION_setExplicitlyEnabledInputMethodSubtypes:I = 0x12

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x20

.field static final blacklist TRANSACTION_shouldShowImeSwitcherButtonForTest:I = 0xf

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xb

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xc

.field static final blacklist TRANSACTION_startConnectionlessStylusHandwriting:I = 0x1a

.field static final blacklist TRANSACTION_startImeTrace:I = 0x17

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0xa

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x19

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x18


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1443
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    .line 1454
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    nop

    .line 210
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 199
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 200
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_d

    .line 204
    iput-object p1, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 205
    return-void

    .line 202
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .registers 3

    .line 218
    if-nez p0, :cond_4

    .line 219
    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_4
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_13

    .line 223
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    return-object v0

    .line 225
    :cond_13
    new-instance v0, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 234
    packed-switch p0, :pswitch_data_6c

    .line 374
    const/4 p0, 0x0

    return-object p0

    .line 370
    :pswitch_5
    const-string p0, "setAllowedImesByPolicyForTest"

    return-object p0

    .line 366
    :pswitch_8
    const-string p0, "getImeTrackerService"

    return-object p0

    .line 362
    :pswitch_b
    const-string p0, "setStylusWindowIdleTimeoutForTest"

    return-object p0

    .line 358
    :pswitch_e
    const-string p0, "addVirtualStylusIdForTestSession"

    return-object p0

    .line 354
    :pswitch_11
    const-string p0, "isStylusHandwritingAvailableAsUser"

    return-object p0

    .line 350
    :pswitch_14
    const-string p0, "acceptStylusHandwritingDelegationAsync"

    return-object p0

    .line 346
    :pswitch_17
    const-string p0, "acceptStylusHandwritingDelegation"

    return-object p0

    .line 342
    :pswitch_1a
    const-string p0, "prepareStylusHandwritingDelegation"

    return-object p0

    .line 338
    :pswitch_1d
    const-string p0, "startConnectionlessStylusHandwriting"

    return-object p0

    .line 334
    :pswitch_20
    const-string p0, "startStylusHandwriting"

    return-object p0

    .line 330
    :pswitch_23
    const-string p0, "stopImeTrace"

    return-object p0

    .line 326
    :pswitch_26
    const-string p0, "startImeTrace"

    return-object p0

    .line 322
    :pswitch_29
    const-string p0, "isImeTraceEnabled"

    return-object p0

    .line 318
    :pswitch_2c
    const-string p0, "removeImeSurfaceFromWindow"

    return-object p0

    .line 314
    :pswitch_2f
    const-string p0, "reportPerceptible"

    return-object p0

    .line 310
    :pswitch_32
    const-string p0, "getInputMethodWindowVisibleHeight"

    return-object p0

    .line 306
    :pswitch_35
    const-string p0, "setExplicitlyEnabledInputMethodSubtypes"

    return-object p0

    .line 302
    :pswitch_38
    const-string p0, "setAdditionalInputMethodSubtypes"

    return-object p0

    .line 298
    :pswitch_3b
    const-string p0, "getCurrentInputMethodSubtype"

    return-object p0

    .line 294
    :pswitch_3e
    const-string p0, "shouldShowImeSwitcherButtonForTest"

    return-object p0

    .line 290
    :pswitch_41
    const-string p0, "onImeSwitchButtonClickFromSystem"

    return-object p0

    .line 286
    :pswitch_44
    const-string p0, "isInputMethodPickerShownForTest"

    return-object p0

    .line 282
    :pswitch_47
    const-string p0, "showInputMethodPickerFromSystem"

    return-object p0

    .line 278
    :pswitch_4a
    const-string p0, "showInputMethodPickerFromClient"

    return-object p0

    .line 274
    :pswitch_4d
    const-string p0, "startInputOrWindowGainedFocus"

    return-object p0

    .line 270
    :pswitch_50
    const-string p0, "hideSoftInputFromServerForTest"

    return-object p0

    .line 266
    :pswitch_53
    const-string p0, "getLastInputMethodSubtype"

    return-object p0

    .line 262
    :pswitch_56
    const-string p0, "getEnabledInputMethodSubtypeList"

    return-object p0

    .line 258
    :pswitch_59
    const-string p0, "getEnabledInputMethodListLegacy"

    return-object p0

    .line 254
    :pswitch_5c
    const-string p0, "getInputMethodListLegacy"

    return-object p0

    .line 250
    :pswitch_5f
    const-string p0, "getEnabledInputMethodList"

    return-object p0

    .line 246
    :pswitch_62
    const-string p0, "getInputMethodList"

    return-object p0

    .line 242
    :pswitch_65
    const-string p0, "getCurrentInputMethodInfoAsUser"

    return-object p0

    .line 238
    :pswitch_68
    const-string p0, "addClient"

    return-object p0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
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
.method protected blacklist addVirtualStylusIdForTestSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1490
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1491
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 229
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1506
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 381
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist hideSoftInputFromServerForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1438
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1439
    return-void
.end method

.method protected blacklist isInputMethodPickerShownForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1452
    return-void
.end method

.method protected blacklist onImeSwitchButtonClickFromSystem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1457
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_onImeSwitchButtonClickFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1458
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    .line 386
    const-string v3, "com.android.internal.view.IInputMethodManager"

    const/4 v7, 0x1

    if-lt v1, v7, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 387
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 390
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    return v7

    .line 393
    :cond_1e
    packed-switch v1, :pswitch_data_366

    .line 783
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 773
    :pswitch_26
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 775
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 776
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAllowedImesByPolicyForTest(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/util/List;)V

    .line 778
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    move v13, v7

    goto/16 :goto_365

    .line 765
    :pswitch_3e
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 766
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 768
    move v13, v7

    goto/16 :goto_365

    .line 755
    :pswitch_4b
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 757
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 758
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 760
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move v13, v7

    goto/16 :goto_365

    .line 746
    :pswitch_63
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 747
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 749
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    move v13, v7

    goto/16 :goto_365

    .line 734
    :pswitch_77
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 736
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 737
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v0

    .line 739
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 741
    move v13, v7

    goto/16 :goto_365

    .line 716
    :pswitch_8f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 724
    move-object/from16 v8, p2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 726
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IBooleanListener;

    move-result-object v6

    .line 727
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    .line 729
    move v13, v7

    goto/16 :goto_365

    .line 698
    :pswitch_ba
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 700
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 702
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 707
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 709
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 711
    move v13, v7

    goto/16 :goto_365

    .line 683
    :pswitch_e5
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 685
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    move v13, v7

    goto/16 :goto_365

    .line 665
    :pswitch_106
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 667
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 669
    sget-object v3, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 671
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object v6

    .line 676
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 678
    move v13, v7

    goto/16 :goto_365

    .line 656
    :pswitch_134
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 657
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 659
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move v13, v7

    goto/16 :goto_365

    .line 649
    :pswitch_149
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    .line 650
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    move v13, v7

    goto/16 :goto_365

    .line 643
    :pswitch_152
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    .line 644
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    move v13, v7

    goto/16 :goto_365

    .line 636
    :pswitch_15b
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v0

    .line 637
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    move v13, v7

    goto/16 :goto_365

    .line 629
    :pswitch_168
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 630
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindow(Landroid/os/IBinder;)V

    .line 632
    move v13, v7

    goto/16 :goto_365

    .line 619
    :pswitch_176
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 621
    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 622
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptible(Landroid/os/IBinder;Z)V

    .line 624
    move v13, v7

    goto/16 :goto_365

    .line 609
    :pswitch_188
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 610
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v0

    .line 612
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    move v13, v7

    goto/16 :goto_365

    .line 596
    :pswitch_1a1
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {v8}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 600
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 603
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    move v13, v7

    goto/16 :goto_365

    .line 583
    :pswitch_1ba
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 585
    sget-object v2, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 587
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 588
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 590
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    move v13, v7

    goto/16 :goto_365

    .line 573
    :pswitch_1d7
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 576
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 578
    move v13, v7

    goto/16 :goto_365

    .line 565
    :pswitch_1ec
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest()Z

    move-result v0

    .line 566
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    move v13, v7

    goto/16 :goto_365

    .line 558
    :pswitch_1f9
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem(I)V

    .line 561
    move v13, v7

    goto/16 :goto_365

    .line 550
    :pswitch_207
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v0

    .line 551
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 553
    move v13, v7

    goto/16 :goto_365

    .line 541
    :pswitch_214
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 544
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(II)V

    .line 546
    move v13, v7

    goto/16 :goto_365

    .line 531
    :pswitch_226
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 533
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 534
    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 536
    move v13, v7

    goto/16 :goto_365

    .line 494
    :pswitch_23c
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 496
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v2

    .line 498
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 500
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 502
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 504
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 506
    sget-object v9, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/EditorInfo;

    .line 508
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v10

    .line 510
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v11

    .line 512
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    move-result-object v12

    .line 514
    move v13, v7

    move-object v7, v9

    move-object v9, v11

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 516
    move-object v14, v10

    move-object v10, v12

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 518
    sget-object v15, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ResultReceiver;

    .line 520
    move-object v8, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 522
    move/from16 v16, v13

    move-object v13, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;IILandroid/os/ResultReceiver;ZI)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v13, 0x1

    goto/16 :goto_365

    .line 488
    :pswitch_2a6
    invoke-virtual {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest()V

    .line 489
    const/4 v13, 0x1

    goto/16 :goto_365

    .line 479
    :pswitch_2ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    move-object/from16 v6, p3

    const/4 v13, 0x1

    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 484
    goto/16 :goto_365

    .line 465
    :pswitch_2c2
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object v0

    .line 472
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    goto/16 :goto_365

    .line 455
    :pswitch_2de
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v0

    .line 458
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 460
    goto/16 :goto_365

    .line 443
    :pswitch_2f2
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v0

    .line 448
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 450
    goto :goto_365

    .line 433
    :pswitch_309
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    .line 436
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 438
    goto :goto_365

    .line 421
    :pswitch_31c
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    .line 426
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 428
    goto :goto_365

    .line 411
    :pswitch_333
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 414
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v6, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 416
    goto :goto_365

    .line 398
    :pswitch_346
    move v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v1

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 405
    invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    nop

    .line 786
    :goto_365
    return v13

    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_346
        :pswitch_333
        :pswitch_31c
        :pswitch_309
        :pswitch_2f2
        :pswitch_2de
        :pswitch_2c2
        :pswitch_2ac
        :pswitch_2a6
        :pswitch_23c
        :pswitch_226
        :pswitch_214
        :pswitch_207
        :pswitch_1f9
        :pswitch_1ec
        :pswitch_1d7
        :pswitch_1ba
        :pswitch_1a1
        :pswitch_188
        :pswitch_176
        :pswitch_168
        :pswitch_15b
        :pswitch_152
        :pswitch_149
        :pswitch_134
        :pswitch_106
        :pswitch_e5
        :pswitch_ba
        :pswitch_8f
        :pswitch_77
        :pswitch_63
        :pswitch_4b
        :pswitch_3e
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist setAllowedImesByPolicyForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1502
    return-void
.end method

.method protected blacklist setStylusWindowIdleTimeoutForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1496
    return-void
.end method

.method protected blacklist shouldShowImeSwitcherButtonForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1463
    return-void
.end method

.method protected blacklist showInputMethodPickerFromSystem_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/view/IInputMethodManager$Stub;->PERMISSIONS_showInputMethodPickerFromSystem:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1447
    return-void
.end method

.method protected blacklist startImeTrace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1475
    return-void
.end method

.method protected blacklist stopImeTrace_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1480
    return-void
.end method
