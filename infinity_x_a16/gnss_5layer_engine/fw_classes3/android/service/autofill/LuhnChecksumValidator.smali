.class public final Landroid/service/autofill/LuhnChecksumValidator;
.super Landroid/service/autofill/InternalValidator;
.source "LuhnChecksumValidator.java"

# interfaces
.implements Landroid/service/autofill/Validator;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/LuhnChecksumValidator;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LuhnChecksumValidator"


# instance fields
.field private final greylist-max-o mIds:[Landroid/view/autofill/AutofillId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/service/autofill/LuhnChecksumValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/LuhnChecksumValidator$1;-><init>()V

    sput-object v0, Landroid/service/autofill/LuhnChecksumValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor whitelist <init>([Landroid/view/autofill/AutofillId;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 50
    const-string v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    .line 51
    return-void
.end method

.method private static greylist-max-o isLuhnChecksumValid(Ljava/lang/String;)Z
    .registers 8

    .line 59
    nop

    .line 60
    nop

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_b
    if-ltz v0, :cond_2a

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 64
    if-ltz v5, :cond_27

    const/16 v6, 0x9

    if-le v5, v6, :cond_1a

    .line 66
    goto :goto_27

    .line 70
    :cond_1a
    if-eqz v4, :cond_23

    .line 71
    mul-int/lit8 v5, v5, 0x2

    .line 72
    if-le v5, v6, :cond_24

    .line 73
    add-int/lit8 v5, v5, -0x9

    goto :goto_24

    .line 76
    :cond_23
    nop

    .line 78
    :cond_24
    :goto_24
    add-int/2addr v3, v5

    .line 79
    xor-int/lit8 v4, v4, 0x1

    .line 62
    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 82
    :cond_2a
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValid(Landroid/service/autofill/ValueFinder;)Z
    .registers 10

    .line 89
    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_72

    .line 91
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget-object v2, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v3, v2

    move v4, v1

    :goto_14
    const-string v5, "LuhnChecksumValidator"

    if-ge v4, v3, :cond_41

    aget-object v6, v2, v4

    .line 93
    invoke-interface {p1, v6}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v7

    .line 94
    if-nez v7, :cond_3b

    .line 95
    sget-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_3a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No partial number for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3a
    return v1

    .line 98
    :cond_3b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 101
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/service/autofill/LuhnChecksumValidator;->isLuhnChecksumValid(Ljava/lang/String;)Z

    move-result v0

    .line 103
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " chars): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_71
    return v0

    .line 89
    :cond_72
    :goto_72
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 109
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LuhnChecksumValidator: [ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 124
    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 125
    return-void
.end method
