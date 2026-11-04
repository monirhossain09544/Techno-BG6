.class public abstract Landroid/os/IIncidentManager$Stub;
.super Landroid/os/Binder;
.source "IIncidentManager.java"

# interfaces
.implements Landroid/os/IIncidentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentManager"

.field static final blacklist TRANSACTION_deleteAllIncidentReports:I = 0xa

.field static final blacklist TRANSACTION_deleteIncidentReports:I = 0x9

.field static final blacklist TRANSACTION_getIncidentReport:I = 0x8

.field static final blacklist TRANSACTION_getIncidentReportList:I = 0x7

.field static final blacklist TRANSACTION_registerSection:I = 0x4

.field static final greylist-max-o TRANSACTION_reportIncident:I = 0x1

.field static final blacklist TRANSACTION_reportIncidentToDumpstate:I = 0x3

.field static final greylist-max-o TRANSACTION_reportIncidentToStream:I = 0x2

.field static final greylist-max-o TRANSACTION_systemRunning:I = 0x6

.field static final blacklist TRANSACTION_unregisterSection:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.os.IIncidentManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;
    .registers 3

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_4
    const-string v0, "android.os.IIncidentManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IIncidentManager;

    if-eqz v1, :cond_13

    .line 114
    check-cast v0, Landroid/os/IIncidentManager;

    return-object v0

    .line 116
    :cond_13
    new-instance v0, Landroid/os/IIncidentManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IIncidentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 125
    packed-switch p0, :pswitch_data_2a

    .line 169
    const/4 p0, 0x0

    return-object p0

    .line 165
    :pswitch_5
    const-string p0, "deleteAllIncidentReports"

    return-object p0

    .line 161
    :pswitch_8
    const-string p0, "deleteIncidentReports"

    return-object p0

    .line 157
    :pswitch_b
    const-string p0, "getIncidentReport"

    return-object p0

    .line 153
    :pswitch_e
    const-string p0, "getIncidentReportList"

    return-object p0

    .line 149
    :pswitch_11
    const-string/jumbo p0, "systemRunning"

    return-object p0

    .line 145
    :pswitch_15
    const-string/jumbo p0, "unregisterSection"

    return-object p0

    .line 141
    :pswitch_19
    const-string/jumbo p0, "registerSection"

    return-object p0

    .line 137
    :pswitch_1d
    const-string/jumbo p0, "reportIncidentToDumpstate"

    return-object p0

    .line 133
    :pswitch_21
    const-string/jumbo p0, "reportIncidentToStream"

    return-object p0

    .line 129
    :pswitch_25
    const-string/jumbo p0, "reportIncident"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
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

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 516
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 176
    invoke-static {p1}, Landroid/os/IIncidentManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 180
    nop

    .line 181
    const-string v0, "android.os.IIncidentManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 185
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v1

    .line 188
    :cond_17
    packed-switch p1, :pswitch_data_da

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 287
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, p1}, Landroid/os/IIncidentManager$Stub;->deleteAllIncidentReports(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    goto/16 :goto_d9

    .line 274
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IIncidentManager$Stub;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_d9

    .line 260
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IIncidentManager$Stub;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto/16 :goto_d9

    .line 248
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1, p4}, Landroid/os/IIncidentManager$Stub;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 255
    goto :goto_d9

    .line 242
    :pswitch_76
    invoke-virtual {p0}, Landroid/os/IIncidentManager$Stub;->systemRunning()V

    .line 243
    goto :goto_d9

    .line 235
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1}, Landroid/os/IIncidentManager$Stub;->unregisterSection(I)V

    .line 238
    goto :goto_d9

    .line 223
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IIncidentDumpCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentDumpCallback;

    move-result-object p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/IIncidentManager$Stub;->registerSection(ILjava/lang/String;Landroid/os/IIncidentDumpCallback;)V

    .line 230
    goto :goto_d9

    .line 213
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/os/IIncidentReportStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;

    move-result-object p3

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, p1, p3}, Landroid/os/IIncidentManager$Stub;->reportIncidentToDumpstate(Ljava/io/FileDescriptor;Landroid/os/IIncidentReportStatusListener;)V

    .line 218
    goto :goto_d9

    .line 201
    :pswitch_af
    sget-object p1, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IncidentReportArgs;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/os/IIncidentReportStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;

    move-result-object p3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/IIncidentManager$Stub;->reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V

    .line 208
    goto :goto_d9

    .line 193
    :pswitch_ca
    sget-object p1, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IncidentReportArgs;

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, p1}, Landroid/os/IIncidentManager$Stub;->reportIncident(Landroid/os/IncidentReportArgs;)V

    .line 196
    nop

    .line 298
    :goto_d9
    return v1

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_af
        :pswitch_9c
        :pswitch_85
        :pswitch_7a
        :pswitch_76
        :pswitch_60
        :pswitch_45
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
