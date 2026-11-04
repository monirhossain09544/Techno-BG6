.class public abstract Landroid/os/IIncidentCompanion$Stub;
.super Landroid/os/Binder;
.source "IIncidentCompanion.java"

# interfaces
.implements Landroid/os/IIncidentCompanion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentCompanion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentCompanion$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_approveReport:I = 0x5

.field static final blacklist TRANSACTION_authorizeReport:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthorization:I = 0x2

.field static final blacklist TRANSACTION_deleteAllIncidentReports:I = 0xa

.field static final blacklist TRANSACTION_deleteIncidentReports:I = 0x9

.field static final blacklist TRANSACTION_denyReport:I = 0x6

.field static final blacklist TRANSACTION_getIncidentReport:I = 0x8

.field static final blacklist TRANSACTION_getIncidentReportList:I = 0x7

.field static final blacklist TRANSACTION_getPendingReports:I = 0x4

.field static final blacklist TRANSACTION_sendReportReadyBroadcast:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.os.IIncidentCompanion"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentCompanion$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentCompanion;
    .registers 3

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    const-string v0, "android.os.IIncidentCompanion"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IIncidentCompanion;

    if-eqz v1, :cond_13

    .line 124
    check-cast v0, Landroid/os/IIncidentCompanion;

    return-object v0

    .line 126
    :cond_13
    new-instance v0, Landroid/os/IIncidentCompanion$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IIncidentCompanion$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 135
    packed-switch p0, :pswitch_data_24

    .line 179
    const/4 p0, 0x0

    return-object p0

    .line 175
    :pswitch_5
    const-string p0, "deleteAllIncidentReports"

    return-object p0

    .line 171
    :pswitch_8
    const-string p0, "deleteIncidentReports"

    return-object p0

    .line 167
    :pswitch_b
    const-string p0, "getIncidentReport"

    return-object p0

    .line 163
    :pswitch_e
    const-string p0, "getIncidentReportList"

    return-object p0

    .line 159
    :pswitch_11
    const-string p0, "denyReport"

    return-object p0

    .line 155
    :pswitch_14
    const-string p0, "approveReport"

    return-object p0

    .line 151
    :pswitch_17
    const-string p0, "getPendingReports"

    return-object p0

    .line 147
    :pswitch_1a
    const-string/jumbo p0, "sendReportReadyBroadcast"

    return-object p0

    .line 143
    :pswitch_1e
    const-string p0, "cancelAuthorization"

    return-object p0

    .line 139
    :pswitch_21
    const-string p0, "authorizeReport"

    return-object p0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 550
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 186
    invoke-static {p1}, Landroid/os/IIncidentCompanion$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    nop

    .line 191
    const-string v0, "android.os.IIncidentCompanion"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 192
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 195
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_17
    packed-switch p1, :pswitch_data_e0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 303
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/os/IIncidentCompanion$Stub;->deleteAllIncidentReports(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_df

    .line 290
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IIncidentCompanion$Stub;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_df

    .line 276
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IIncidentCompanion$Stub;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 285
    goto/16 :goto_df

    .line 264
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1, p4}, Landroid/os/IIncidentCompanion$Stub;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 271
    goto :goto_df

    .line 255
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, p1}, Landroid/os/IIncidentCompanion$Stub;->denyReport(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_df

    .line 246
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1}, Landroid/os/IIncidentCompanion$Stub;->approveReport(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_df

    .line 238
    :pswitch_92
    invoke-virtual {p0}, Landroid/os/IIncidentCompanion$Stub;->getPendingReports()Ljava/util/List;

    move-result-object p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 241
    goto :goto_df

    .line 229
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, p1, p3}, Landroid/os/IIncidentCompanion$Stub;->sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_df

    .line 221
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IIncidentAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentAuthListener;

    move-result-object p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1}, Landroid/os/IIncidentCompanion$Stub;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V

    .line 224
    goto :goto_df

    .line 203
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IIncidentAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentAuthListener;

    move-result-object v8

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/os/IIncidentCompanion$Stub;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 216
    nop

    .line 314
    :goto_df
    return v1

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_92
        :pswitch_84
        :pswitch_76
        :pswitch_60
        :pswitch_45
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
