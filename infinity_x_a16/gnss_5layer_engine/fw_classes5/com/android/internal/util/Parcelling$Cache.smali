.class public Lcom/android/internal/util/Parcelling$Cache;
.super Ljava/lang/Object;
.source "Parcelling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Parcelling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field private static blacklist sCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Lcom/android/internal/util/Parcelling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/internal/util/Parcelling<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/android/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/Parcelling;

    return-object p0
.end method

.method public static blacklist getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/internal/util/Parcelling<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_7

    .line 88
    return-object v0

    .line 91
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/Parcelling;

    invoke-static {p0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-object p0

    .line 92
    :catch_12
    move-exception p0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/internal/util/Parcelling<",
            "*>;>(TP;)TP;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/android/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    invoke-interface {p0}, Lcom/android/internal/util/Parcelling;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object p0
.end method
