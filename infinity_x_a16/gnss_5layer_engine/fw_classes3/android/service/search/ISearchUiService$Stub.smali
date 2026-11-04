.class public abstract Landroid/service/search/ISearchUiService$Stub;
.super Landroid/os/Binder;
.source "ISearchUiService.java"

# interfaces
.implements Landroid/service/search/ISearchUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/ISearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/search/ISearchUiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCreateSearchSession:I = 0x1

.field static final blacklist TRANSACTION_onDestroy:I = 0x6

.field static final blacklist TRANSACTION_onNotifyEvent:I = 0x3

.field static final blacklist TRANSACTION_onQuery:I = 0x2

.field static final blacklist TRANSACTION_onRegisterEmptyQueryResultUpdateCallback:I = 0x4

.field static final blacklist TRANSACTION_onUnregisterEmptyQueryResultUpdateCallback:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.service.search.ISearchUiService"

    invoke-virtual {p0, p0, v0}, Landroid/service/search/ISearchUiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/search/ISearchUiService;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.service.search.ISearchUiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/search/ISearchUiService;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/service/search/ISearchUiService;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/service/search/ISearchUiService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/search/ISearchUiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo p0, "onDestroy"

    return-object p0

    .line 94
    :pswitch_9
    const-string/jumbo p0, "onUnregisterEmptyQueryResultUpdateCallback"

    return-object p0

    .line 90
    :pswitch_d
    const-string/jumbo p0, "onRegisterEmptyQueryResultUpdateCallback"

    return-object p0

    .line 86
    :pswitch_11
    const-string/jumbo p0, "onNotifyEvent"

    return-object p0

    .line 82
    :pswitch_15
    const-string/jumbo p0, "onQuery"

    return-object p0

    .line 78
    :pswitch_19
    const-string/jumbo p0, "onCreateSearchSession"

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

    .line 296
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Landroid/service/search/ISearchUiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.service.search.ISearchUiService"

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
    packed-switch p1, :pswitch_data_b4

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 180
    :pswitch_1f
    sget-object p1, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchSessionId;

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p1}, Landroid/service/search/ISearchUiService$Stub;->onDestroy(Landroid/app/search/SearchSessionId;)V

    .line 183
    goto/16 :goto_b2

    .line 170
    :pswitch_2f
    sget-object p1, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchSessionId;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object p3

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1, p3}, Landroid/service/search/ISearchUiService$Stub;->onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 175
    goto :goto_b2

    .line 160
    :pswitch_46
    sget-object p1, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchSessionId;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object p3

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p3}, Landroid/service/search/ISearchUiService$Stub;->onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 165
    goto :goto_b2

    .line 148
    :pswitch_5d
    sget-object p1, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchSessionId;

    .line 150
    sget-object p3, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/search/Query;

    .line 152
    sget-object p4, Landroid/app/search/SearchTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/search/SearchTargetEvent;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/search/ISearchUiService$Stub;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    .line 155
    goto :goto_b2

    .line 136
    :pswitch_7c
    sget-object p1, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchSessionId;

    .line 138
    sget-object p3, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/search/Query;

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/search/ISearchUiService$Stub;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    .line 143
    goto :goto_b2

    .line 126
    :pswitch_9b
    sget-object p1, Landroid/app/search/SearchContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchContext;

    .line 128
    sget-object p3, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/search/SearchSessionId;

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1, p3}, Landroid/service/search/ISearchUiService$Stub;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    .line 131
    nop

    .line 190
    :goto_b2
    return v1

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_7c
        :pswitch_5d
        :pswitch_46
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
