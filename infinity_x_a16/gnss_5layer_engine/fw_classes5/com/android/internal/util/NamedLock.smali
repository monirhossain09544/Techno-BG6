.class public final Lcom/android/internal/util/NamedLock;
.super Ljava/lang/Object;
.source "NamedLock.java"


# instance fields
.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/NamedLock;->mName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "name (%s) cannot start or end with blank characters"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "name cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public static blacklist create(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 49
    new-instance v0, Lcom/android/internal/util/NamedLock;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NamedLock;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/util/NamedLock;->mName:Ljava/lang/String;

    return-object v0
.end method
