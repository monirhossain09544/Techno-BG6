.class public final Landroid/security/net/config/PinSet;
.super Ljava/lang/Object;
.source "PinSet.java"


# static fields
.field public static final greylist-max-o EMPTY_PINSET:Landroid/security/net/config/PinSet;


# instance fields
.field public final greylist-max-o expirationTime:J

.field public final greylist-max-o pins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/security/net/config/Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Landroid/security/net/config/PinSet;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Landroid/security/net/config/PinSet;-><init>(Ljava/util/Set;J)V

    sput-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    .line 25
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Set;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/security/net/config/Pin;",
            ">;J)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_a

    .line 34
    iput-object p1, p0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    .line 35
    iput-wide p2, p0, Landroid/security/net/config/PinSet;->expirationTime:J

    .line 36
    return-void

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "pins must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method greylist-max-o getPinAlgorithms()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 41
    iget-object v1, p0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/Pin;

    .line 42
    iget-object v2, v2, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_b

    .line 44
    :cond_1d
    return-object v0
.end method
