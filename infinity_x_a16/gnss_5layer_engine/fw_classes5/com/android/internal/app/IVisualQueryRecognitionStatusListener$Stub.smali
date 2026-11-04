.class public abstract Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;
.super Landroid/os/Binder;
.source "IVisualQueryRecognitionStatusListener.java"

# interfaces
.implements Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onStartPerceiving:I = 0x1

.field static final blacklist TRANSACTION_onStopPerceiving:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.android.internal.app.IVisualQueryRecognitionStatusListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "com.android.internal.app.IVisualQueryRecognitionStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_c

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 73
    :pswitch_5
    const-string p0, "onStopPerceiving"

    return-object p0

    .line 69
    :pswitch_8
    const-string p0, "onStartPerceiving"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 84
    invoke-static {p1}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    nop

    .line 89
    const-string v0, "com.android.internal.app.IVisualQueryRecognitionStatusListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_17
    packed-switch p1, :pswitch_data_28

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;->onStopPerceiving()V

    .line 106
    goto :goto_27

    .line 100
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;->onStartPerceiving()V

    .line 101
    nop

    .line 113
    :goto_27
    return v1

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
