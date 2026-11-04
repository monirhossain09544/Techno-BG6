.class public final Landroid/service/autofill/AutofillFieldClassificationService$Scores;
.super Ljava/lang/Object;
.source "AutofillFieldClassificationService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scores"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/AutofillFieldClassificationService$Scores;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o scores:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 357
    new-instance v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores$1;

    invoke-direct {v0}, Landroid/service/autofill/AutofillFieldClassificationService$Scores$1;-><init>()V

    sput-object v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    .line 316
    move v2, v3

    :goto_1f
    if-ge v2, v0, :cond_34

    .line 317
    move v4, v3

    :goto_22
    if-ge v4, v1, :cond_31

    .line 318
    iget-object v5, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v5, v5, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    aput v6, v5, v4

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 316
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 321
    :cond_34
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/autofill/AutofillFieldClassificationService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>([[F)V
    .registers 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    .line 325
    return-void
.end method

.method synthetic constructor blacklist <init>([[FLandroid/service/autofill/AutofillFieldClassificationService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>([[F)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 329
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    array-length v0, v0

    .line 330
    const/4 v1, 0x0

    if-lez v0, :cond_c

    iget-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v2, v2, v1

    array-length v2, v2

    goto :goto_d

    :cond_c
    move v2, v1

    .line 331
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scores ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    nop

    :goto_2a
    if-ge v1, v0, :cond_4a

    .line 334
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 336
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 346
    iget-object p2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    array-length p2, p2

    .line 347
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 348
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    move v2, v1

    :goto_10
    if-ge v2, p2, :cond_24

    .line 351
    move v3, v1

    :goto_13
    if-ge v3, v0, :cond_21

    .line 352
    iget-object v4, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v4, v4, v2

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 350
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 355
    :cond_24
    return-void
.end method
