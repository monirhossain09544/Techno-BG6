.class public Landroid/os/health/HealthKeys$Constants;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# instance fields
.field private final greylist-max-o mDataType:Ljava/lang/String;

.field private final greylist-max-o mKeys:[[I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 12

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 99
    const-class v0, Landroid/os/health/HealthKeys$Constant;

    .line 101
    array-length v1, p1

    .line 103
    iget-object v2, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    array-length v2, v2

    new-array v3, v2, [Landroid/os/health/HealthKeys$SortedIntArray;

    .line 104
    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v2, :cond_28

    .line 105
    new-instance v6, Landroid/os/health/HealthKeys$SortedIntArray;

    invoke-direct {v6, v1}, Landroid/os/health/HealthKeys$SortedIntArray;-><init>(I)V

    aput-object v6, v3, v5

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 108
    :cond_28
    move v5, v4

    :goto_29
    if-ge v5, v1, :cond_90

    .line 109
    aget-object v6, p1, v5

    .line 110
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/os/health/HealthKeys$Constant;

    .line 111
    if-eqz v7, :cond_8d

    .line 112
    invoke-interface {v7}, Landroid/os/health/HealthKeys$Constant;->type()I

    move-result v7

    .line 113
    if-ge v7, v2, :cond_6a

    .line 118
    :try_start_3b
    aget-object v8, v3, v7

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/health/HealthKeys$SortedIntArray;->addValue(I)V
    :try_end_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_45} :catch_46

    .line 122
    goto :goto_8d

    .line 119
    :catch_46
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read constant value type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 114
    :cond_6a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Constant type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_8d
    :goto_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 126
    :cond_90
    nop

    :goto_91
    if-ge v4, v2, :cond_a0

    .line 127
    iget-object p1, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v3, v4

    invoke-virtual {v0}, Landroid/os/health/HealthKeys$SortedIntArray;->getArray()[I

    move-result-object v0

    aput-object v0, p1, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 129
    :cond_a0
    return-void
.end method


# virtual methods
.method public greylist-max-o getDataType()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIndex(II)I
    .registers 6

    .line 163
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 164
    if-ltz v0, :cond_b

    .line 165
    return v0

    .line 167
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " (of type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getKeys(I)[I
    .registers 3

    .line 176
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public greylist-max-o getSize(I)I
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object p1, v0, p1

    array-length p1, p1

    return p1
.end method
