.class public Lcom/android/internal/os/ClassLoaderFactory;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final blacklist DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final blacklist DEX_CLASS_LOADER_NAME:Ljava/lang/String;

.field private static final blacklist PATH_CLASS_LOADER_NAME:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 40
    const-class v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 41
    const-class v0, Ldalvik/system/DelegateLastClassLoader;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    if-nez p4, :cond_5

    .line 86
    move-object v5, v0

    goto :goto_12

    .line 87
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/ClassLoader;

    invoke-interface {p4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/ClassLoader;

    move-object v5, p4

    .line 88
    :goto_12
    if-nez p5, :cond_16

    .line 89
    move-object v6, v0

    goto :goto_25

    .line 90
    :cond_16
    nop

    .line 91
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/ClassLoader;

    .line 90
    invoke-interface {p5, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, [Ljava/lang/ClassLoader;

    move-object v6, v0

    .line 92
    :goto_25
    invoke-static {p3}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_34

    .line 93
    new-instance v1, Ldalvik/system/PathClassLoader;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    return-object v1

    .line 95
    :cond_34
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static {p3}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 96
    new-instance v1, Ldalvik/system/DelegateLastClassLoader;

    invoke-direct/range {v1 .. v6}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;[Ljava/lang/ClassLoader;)V

    return-object v1

    .line 100
    :cond_43
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid classLoaderName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;
    .registers 17

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const-string v0, "ALL"

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 137
    nop

    .line 138
    if-eqz p8, :cond_15

    .line 139
    const-string p1, ":"

    invoke-static {p1, p8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    move-object p6, p1

    goto :goto_18

    .line 138
    :cond_15
    const-string p1, ""

    move-object p6, p1

    .line 142
    :goto_18
    const-string p1, "createClassloaderNamespace"

    const-wide/16 p7, 0x40

    invoke-static {p7, p8, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    move-object p3, p2

    move p1, p4

    move p4, p5

    move-object p5, v0

    move-object p2, v1

    invoke-static/range {p0 .. p6}, Lcom/android/internal/os/ClassLoaderFactory;->createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p7, p8}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    if-nez p1, :cond_2e

    .line 157
    return-object p0

    .line 153
    :cond_2e
    new-instance p2, Ljava/lang/UnsatisfiedLinkError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to create namespace for the classloader "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, ": "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static native greylist-max-r createClassloaderNamespace(Ljava/lang/ClassLoader;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist getPathClassLoaderName()Ljava/lang/String;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isDelegateLastClassLoaderName(Ljava/lang/String;)Z
    .registers 2

    .line 75
    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DELEGATE_LAST_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isPathClassLoaderName(Ljava/lang/String;)Z
    .registers 2

    .line 67
    if-eqz p0, :cond_15

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->PATH_CLASS_LOADER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/internal/os/ClassLoaderFactory;->DEX_CLASS_LOADER_NAME:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 67
    :goto_16
    return p0
.end method

.method public static blacklist isValidClassLoaderName(Ljava/lang/String;)Z
    .registers 2

    .line 57
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
