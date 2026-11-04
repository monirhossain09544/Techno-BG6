.class public abstract Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetHost.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetHost"

.field static final blacklist TRANSACTION_appWidgetRemoved:I = 0x6

.field static final greylist-max-o TRANSACTION_providerChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_providersChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_updateAppWidget:I = 0x2

.field static final blacklist TRANSACTION_updateAppWidgetDeferred:I = 0x1

.field static final greylist-max-o TRANSACTION_viewDataChanged:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_18

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string p0, "appWidgetRemoved"

    return-object p0

    .line 90
    :pswitch_8
    const-string p0, "viewDataChanged"

    return-object p0

    .line 86
    :pswitch_b
    const-string p0, "providersChanged"

    return-object p0

    .line 82
    :pswitch_e
    const-string p0, "providerChanged"

    return-object p0

    .line 78
    :pswitch_11
    const-string p0, "updateAppWidget"

    return-object p0

    .line 74
    :pswitch_14
    const-string p0, "updateAppWidgetDeferred"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 278
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_70

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->appWidgetRemoved(I)V

    .line 168
    goto :goto_6e

    .line 155
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->viewDataChanged(II)V

    .line 160
    goto :goto_6e

    .line 149
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providersChanged()V

    .line 150
    goto :goto_6e

    .line 140
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 142
    sget-object p3, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 145
    goto :goto_6e

    .line 130
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 132
    sget-object p3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/RemoteViews;

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 135
    goto :goto_6e

    .line 122
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->updateAppWidgetDeferred(I)V

    .line 125
    nop

    .line 175
    :goto_6e
    return v1

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_63
        :pswitch_50
        :pswitch_3d
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
