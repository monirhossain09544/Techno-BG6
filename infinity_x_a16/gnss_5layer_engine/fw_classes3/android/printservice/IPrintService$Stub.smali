.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final greylist-max-o TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final greylist-max-o TRANSACTION_destroyPrinterDiscoverySession:I = 0xb

.field static final greylist-max-o TRANSACTION_onPrintJobQueued:I = 0x3

.field static final greylist-max-o TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final greylist-max-o TRANSACTION_requestCustomPrinterIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setClient:I = 0x1

.field static final greylist-max-o TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final greylist-max-o TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final greylist-max-o TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final greylist-max-o TRANSACTION_stopPrinterStateTracking:I = 0xa

.field static final greylist-max-o TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
    .registers 3

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    const-string v0, "android.printservice.IPrintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_13

    .line 84
    check-cast v0, Landroid/printservice/IPrintService;

    return-object v0

    .line 86
    :cond_13
    new-instance v0, Landroid/printservice/IPrintService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 95
    packed-switch p0, :pswitch_data_30

    .line 143
    const/4 p0, 0x0

    return-object p0

    .line 139
    :pswitch_5
    const-string p0, "destroyPrinterDiscoverySession"

    return-object p0

    .line 135
    :pswitch_8
    const-string/jumbo p0, "stopPrinterStateTracking"

    return-object p0

    .line 131
    :pswitch_c
    const-string/jumbo p0, "requestCustomPrinterIcon"

    return-object p0

    .line 127
    :pswitch_10
    const-string/jumbo p0, "startPrinterStateTracking"

    return-object p0

    .line 123
    :pswitch_14
    const-string/jumbo p0, "validatePrinters"

    return-object p0

    .line 119
    :pswitch_18
    const-string/jumbo p0, "stopPrinterDiscovery"

    return-object p0

    .line 115
    :pswitch_1c
    const-string/jumbo p0, "startPrinterDiscovery"

    return-object p0

    .line 111
    :pswitch_20
    const-string p0, "createPrinterDiscoverySession"

    return-object p0

    .line 107
    :pswitch_23
    const-string/jumbo p0, "onPrintJobQueued"

    return-object p0

    .line 103
    :pswitch_27
    const-string/jumbo p0, "requestCancelPrintJob"

    return-object p0

    .line 99
    :pswitch_2b
    const-string/jumbo p0, "setClient"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 417
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 150
    invoke-static {p1}, Landroid/printservice/IPrintService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    nop

    .line 155
    const-string v0, "android.printservice.IPrintService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_17
    packed-switch p1, :pswitch_data_a2

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 240
    :pswitch_1f
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

    .line 241
    goto/16 :goto_a1

    .line 233
    :pswitch_24
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 236
    goto/16 :goto_a1

    .line 225
    :pswitch_34
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 228
    goto :goto_a1

    .line 217
    :pswitch_43
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 220
    goto :goto_a1

    .line 209
    :pswitch_52
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    .line 212
    goto :goto_a1

    .line 203
    :pswitch_5f
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    .line 204
    goto :goto_a1

    .line 196
    :pswitch_63
    sget-object p1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    .line 199
    goto :goto_a1

    .line 190
    :pswitch_70
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    .line 191
    goto :goto_a1

    .line 183
    :pswitch_74
    sget-object p1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintJobInfo;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 186
    goto :goto_a1

    .line 175
    :pswitch_83
    sget-object p1, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintJobInfo;

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .line 178
    goto :goto_a1

    .line 167
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    .line 170
    nop

    .line 248
    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_92
        :pswitch_83
        :pswitch_74
        :pswitch_70
        :pswitch_63
        :pswitch_5f
        :pswitch_52
        :pswitch_43
        :pswitch_34
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
