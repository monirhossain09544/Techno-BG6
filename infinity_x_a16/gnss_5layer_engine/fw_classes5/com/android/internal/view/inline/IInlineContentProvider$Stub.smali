.class public abstract Lcom/android/internal/view/inline/IInlineContentProvider$Stub;
.super Landroid/os/Binder;
.source "IInlineContentProvider.java"

# interfaces
.implements Lcom/android/internal/view/inline/IInlineContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/IInlineContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSurfacePackageReleased:I = 0x3

.field static final blacklist TRANSACTION_provideContent:I = 0x1

.field static final blacklist TRANSACTION_requestSurfacePackage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.view.inline.IInlineContentProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentProvider;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.view.inline.IInlineContentProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Lcom/android/internal/view/inline/IInlineContentProvider;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Lcom/android/internal/view/inline/IInlineContentProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_e

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_5
    const-string p0, "onSurfacePackageReleased"

    return-object p0

    .line 72
    :pswitch_8
    const-string p0, "requestSurfacePackage"

    return-object p0

    .line 68
    :pswitch_b
    const-string p0, "provideContent"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
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

    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {p1}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    nop

    .line 92
    const-string v0, "com.android.internal.view.inline.IInlineContentProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_17
    packed-switch p1, :pswitch_data_40

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->onSurfacePackageReleased()V

    .line 121
    goto :goto_3e

    .line 115
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->requestSurfacePackage()V

    .line 116
    goto :goto_3e

    .line 104
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentCallback;

    move-result-object p4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V

    .line 111
    nop

    .line 128
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
