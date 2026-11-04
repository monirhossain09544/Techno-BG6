.class public final Landroid/service/autofill/SavedDatasetsInfo;
.super Ljava/lang/Object;
.source "SavedDatasetsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SavedDatasetsInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist TYPE_PASSWORDS:Ljava/lang/String; = "passwords"


# instance fields
.field private final blacklist mCount:I

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 11

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "passwords"

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_52

    .line 101
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type was "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " but must be one of: TYPE_OTHER("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "), TYPE_PASSWORDS("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_52
    :goto_52
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 109
    iput p2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    .line 110
    const-class v2, Landroid/annotation/IntRange;

    iget v4, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    const-string v5, "from"

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 115
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 153
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 155
    :cond_12
    check-cast p1, Landroid/service/autofill/SavedDatasetsInfo;

    .line 157
    iget-object v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 158
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    iget p1, p1, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 157
    :goto_26
    return v0

    .line 153
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getCount()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    return v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 168
    nop

    .line 169
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 170
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    add-int/2addr v0, v1

    .line 171
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedDatasetsInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
