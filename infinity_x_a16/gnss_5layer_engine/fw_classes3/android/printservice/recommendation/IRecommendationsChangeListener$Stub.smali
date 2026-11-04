.class public abstract Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;
.super Landroid/os/Binder;
.source "IRecommendationsChangeListener.java"

# interfaces
.implements Landroid/printservice/recommendation/IRecommendationsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/IRecommendationsChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.printservice.recommendation.IRecommendationsChangeListener"

.field static final greylist-max-o TRANSACTION_onRecommendationsChanged:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.printservice.recommendation.IRecommendationsChangeListener"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .registers 3

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_4
    const-string v0, "android.printservice.recommendation.IRecommendationsChangeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    if-eqz v1, :cond_13

    .line 48
    check-cast v0, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    return-object v0

    .line 50
    :cond_13
    new-instance v0, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 59
    packed-switch p0, :pswitch_data_a

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 63
    :pswitch_5
    const-string/jumbo p0, "onRecommendationsChanged"

    return-object p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 74
    invoke-static {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 78
    nop

    .line 79
    const-string v0, "android.printservice.recommendation.IRecommendationsChangeListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 86
    :cond_17
    packed-switch p1, :pswitch_data_24

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 90
    :pswitch_1f
    invoke-virtual {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->onRecommendationsChanged()V

    .line 91
    nop

    .line 98
    return v1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
