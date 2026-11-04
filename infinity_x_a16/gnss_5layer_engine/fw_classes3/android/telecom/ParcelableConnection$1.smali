.class Landroid/telecom/ParcelableConnection$1;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .registers 30

    .line 262
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 264
    const-class v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 267
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/net/Uri;

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 271
    nop

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v13

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_45

    move v15, v7

    goto :goto_46

    :cond_45
    move v15, v3

    .line 275
    :goto_46
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v7, :cond_4f

    move/from16 v16, v7

    goto :goto_51

    :cond_4f
    move/from16 v16, v3

    .line 276
    :goto_51
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 277
    const-class v2, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/telecom/StatusHints;

    .line 278
    const-class v2, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/telecom/DisconnectCause;

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v24

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 289
    new-instance v3, Landroid/telecom/ParcelableConnection;

    move-object/from16 v23, v2

    invoke-direct/range {v3 .. v27}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableConnection;
    .registers 2

    .line 316
    new-array p1, p1, [Landroid/telecom/ParcelableConnection;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method
