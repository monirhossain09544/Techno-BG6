.class public final Landroid/print/PrintAttributes$Resolution;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resolution"
.end annotation


# instance fields
.field private final greylist-max-o mHorizontalDpi:I

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLabel:Ljava/lang/String;

.field private final greylist-max-o mVerticalDpi:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1160
    if-lez p3, :cond_25

    .line 1164
    if-lez p4, :cond_1c

    .line 1168
    iput-object p1, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    .line 1169
    iput-object p2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    .line 1170
    iput p3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    .line 1171
    iput p4, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    .line 1172
    return-void

    .line 1165
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "verticalDpi cannot be less than or equal to zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1161
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "horizontalDpi cannot be less than or equal to zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1158
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1155
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static greylist-max-o createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;
    .registers 5

    .line 1223
    new-instance v0, Landroid/print/PrintAttributes$Resolution;

    .line 1224
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1225
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1226
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1227
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1223
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1241
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1242
    return v0

    .line 1244
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1245
    return v1

    .line 1247
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1248
    return v1

    .line 1250
    :cond_13
    check-cast p1, Landroid/print/PrintAttributes$Resolution;

    .line 1251
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    iget v3, p1, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    if-eq v2, v3, :cond_1c

    .line 1252
    return v1

    .line 1254
    :cond_1c
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    iget p1, p1, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    if-eq v2, p1, :cond_23

    .line 1255
    return v1

    .line 1257
    :cond_23
    return v0
.end method

.method public whitelist getHorizontalDpi()I
    .registers 2

    .line 1203
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 1185
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVerticalDpi()I
    .registers 2

    .line 1212
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1233
    nop

    .line 1234
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 1235
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    add-int/2addr v0, v1

    .line 1236
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1263
    const-string v1, "Resolution{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    const-string v1, ", horizontalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    const-string v1, ", verticalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1268
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 1216
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1218
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    return-void
.end method
