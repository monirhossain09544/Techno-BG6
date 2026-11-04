.class public Lcom/android/internal/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/MessageUtils$DuplicateConstantError;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field public static final blacklist DEFAULT_PREFIXES:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const-class v0, Lcom/android/internal/util/MessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    .line 120
    const-string v0, "CMD_"

    const-string v1, "EVENT_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 55
    array-length v4, v1

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_8b

    aget-object v0, v1, v6

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 61
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_17} :catch_6e

    .line 65
    nop

    .line 67
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v8, :cond_88

    aget-object v10, v7, v9

    .line 68
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    xor-int/2addr v0, v12

    or-int/2addr v0, v11

    if-eqz v0, :cond_31

    .line 70
    goto :goto_6b

    .line 73
    :cond_31
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    .line 74
    array-length v13, v2

    const/4 v14, 0x0

    :goto_37
    if-ge v14, v13, :cond_6b

    aget-object v0, v2, v14

    .line 76
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 77
    goto :goto_68

    .line 83
    :cond_42
    :try_start_42
    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_45} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_45} :catch_66

    .line 88
    const/4 v0, 0x0

    :try_start_46
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4a} :catch_64
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_46 .. :try_end_4a} :catch_64
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_4a} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_4a} :catch_66

    .line 94
    nop

    .line 97
    :try_start_4b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 98
    if-eqz v15, :cond_60

    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5a

    goto :goto_60

    .line 99
    :cond_5a
    new-instance v5, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;

    invoke-direct {v5, v11, v15, v0}, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v5

    .line 102
    :cond_60
    :goto_60
    invoke-virtual {v3, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_63} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_63} :catch_66

    .line 110
    goto :goto_68

    .line 89
    :catch_64
    move-exception v0

    .line 93
    goto :goto_6b

    .line 107
    :catch_66
    move-exception v0

    .line 109
    nop

    .line 74
    :goto_68
    add-int/lit8 v14, v14, 0x1

    goto :goto_37

    .line 67
    :cond_6b
    :goto_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 62
    :catch_6e
    move-exception v0

    .line 63
    sget-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t list fields of class "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    nop

    .line 55
    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 114
    :cond_8b
    return-object v3
.end method
