.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 18
    if-eqz p0, :cond_b

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 24
    :cond_b
    new-instance p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    .line 44
    :catch_17
    move-exception p0

    .line 49
    const/4 p0, 0x0

    return-object p0
.end method
