.class public Lcom/android/internal/os/BinderTransactionNameResolver;
.super Ljava/lang/Object;
.source "BinderTransactionNameResolver.java"


# static fields
.field private static final blacklist NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private final blacklist mGetDefaultTransactionNameMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 52
    :try_start_0
    const-class v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    const-string v1, "noDefaultTransactionName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_14

    .line 56
    nop

    .line 57
    return-void

    .line 54
    :catch_14
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist noDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 47
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getMethodName(Ljava/lang/Class;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 69
    if-nez v0, :cond_35

    .line 71
    :try_start_a
    const-string v0, "getDefaultTransactionName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_18} :catch_19

    .line 74
    goto :goto_1c

    .line 72
    :catch_19
    move-exception v0

    .line 73
    sget-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

    .line 75
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2e

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 77
    :cond_2e
    sget-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

    .line 79
    :cond_30
    iget-object v1, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_35
    :try_start_35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 85
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_4e} :catch_51
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_4e} :catch_51

    goto :goto_50

    .line 86
    :cond_4f
    nop

    .line 84
    :goto_50
    return-object p1

    .line 87
    :catch_51
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
