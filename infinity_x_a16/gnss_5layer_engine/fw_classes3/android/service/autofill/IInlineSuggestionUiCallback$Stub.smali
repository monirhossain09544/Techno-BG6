.class public abstract Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionUiCallback.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionUiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionUiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onClick:I = 0x1

.field static final blacklist TRANSACTION_onContent:I = 0x3

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onLongClick:I = 0x2

.field static final blacklist TRANSACTION_onStartIntentSender:I = 0x6

.field static final blacklist TRANSACTION_onTransferTouchFocusToImeWindow:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.service.autofill.IInlineSuggestionUiCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUiCallback;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.service.autofill.IInlineSuggestionUiCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/service/autofill/IInlineSuggestionUiCallback;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 74
    packed-switch p0, :pswitch_data_1e

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 98
    :pswitch_5
    const-string/jumbo p0, "onStartIntentSender"

    return-object p0

    .line 94
    :pswitch_9
    const-string/jumbo p0, "onTransferTouchFocusToImeWindow"

    return-object p0

    .line 90
    :pswitch_d
    const-string/jumbo p0, "onError"

    return-object p0

    .line 86
    :pswitch_11
    const-string/jumbo p0, "onContent"

    return-object p0

    .line 82
    :pswitch_15
    const-string/jumbo p0, "onLongClick"

    return-object p0

    .line 78
    :pswitch_19
    const-string/jumbo p0, "onClick"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 275
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    nop

    .line 114
    const-string v0, "android.service.autofill.IInlineSuggestionUiCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_17
    packed-switch p1, :pswitch_data_6a

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_1f
    sget-object p1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentSender;

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onStartIntentSender(Landroid/content/IntentSender;)V

    .line 168
    goto :goto_68

    .line 155
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V

    .line 160
    goto :goto_68

    .line 149
    :pswitch_3d
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onError()V

    .line 150
    goto :goto_68

    .line 136
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionUi$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUi;

    move-result-object p1

    .line 138
    sget-object p3, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    .line 145
    goto :goto_68

    .line 130
    :pswitch_60
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onLongClick()V

    .line 131
    goto :goto_68

    .line 125
    :pswitch_64
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->onClick()V

    .line 126
    nop

    .line 175
    :goto_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_60
        :pswitch_41
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
