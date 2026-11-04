.class final Landroid/service/autofill/AutofillServiceHelper;
.super Ljava/lang/Object;
.source "AutofillServiceHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;
    .registers 4

    .line 28
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    array-length v1, p0

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    const-string v2, "must have at least one id"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    nop

    :goto_f
    array-length v1, p0

    if-ge v0, v1, :cond_38

    .line 31
    aget-object v1, p0, v0

    if-eqz v1, :cond_19

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 32
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ids["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_38
    return-object p0
.end method
