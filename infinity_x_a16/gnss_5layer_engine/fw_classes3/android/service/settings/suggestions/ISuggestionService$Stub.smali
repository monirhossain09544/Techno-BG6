.class public abstract Landroid/service/settings/suggestions/ISuggestionService$Stub;
.super Landroid/os/Binder;
.source "ISuggestionService.java"

# interfaces
.implements Landroid/service/settings/suggestions/ISuggestionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/suggestions/ISuggestionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.settings.suggestions.ISuggestionService"

.field static final greylist-max-o TRANSACTION_dismissSuggestion:I = 0x3

.field static final greylist-max-o TRANSACTION_getSuggestions:I = 0x2

.field static final greylist-max-o TRANSACTION_launchSuggestion:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/service/settings/suggestions/ISuggestionService;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_e

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 83
    :pswitch_5
    const-string p0, "launchSuggestion"

    return-object p0

    .line 79
    :pswitch_8
    const-string p0, "dismissSuggestion"

    return-object p0

    .line 75
    :pswitch_b
    const-string p0, "getSuggestions"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 220
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 94
    invoke-static {p1}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 98
    nop

    .line 99
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 106
    :cond_17
    packed-switch p1, :pswitch_data_50

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1f
    sget-object p1, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/suggestions/Suggestion;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_4e

    .line 118
    :pswitch_31
    sget-object p1, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/suggestions/Suggestion;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_4e

    .line 110
    :pswitch_43
    invoke-virtual {p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->getSuggestions()Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 113
    nop

    .line 138
    :goto_4e
    return v1

    nop

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
