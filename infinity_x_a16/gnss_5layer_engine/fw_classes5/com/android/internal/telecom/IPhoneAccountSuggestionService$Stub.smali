.class public abstract Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;
.super Landroid/os/Binder;
.source "IPhoneAccountSuggestionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IPhoneAccountSuggestionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IPhoneAccountSuggestionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAccountSuggestionRequest:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.android.internal.telecom.IPhoneAccountSuggestionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IPhoneAccountSuggestionService;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.android.internal.telecom.IPhoneAccountSuggestionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IPhoneAccountSuggestionService;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/android/internal/telecom/IPhoneAccountSuggestionService;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 58
    packed-switch p0, :pswitch_data_8

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 62
    :pswitch_5
    const-string p0, "onAccountSuggestionRequest"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {p1}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 77
    nop

    .line 78
    const-string v0, "com.android.internal.telecom.IPhoneAccountSuggestionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_17
    packed-switch p1, :pswitch_data_34

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 90
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;->onAccountSuggestionRequest(Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;Ljava/lang/String;)V

    .line 95
    nop

    .line 102
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
