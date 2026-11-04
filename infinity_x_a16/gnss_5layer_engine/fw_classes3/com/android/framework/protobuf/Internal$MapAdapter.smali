.class public Lcom/android/framework/protobuf/Internal$MapAdapter;
.super Ljava/util/AbstractMap;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;,
        Lcom/android/framework/protobuf/Internal$MapAdapter$SetAdapter;,
        Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;,
        Lcom/android/framework/protobuf/Internal$MapAdapter$IteratorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "RealValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist realMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TRealValue;>;"
        }
    .end annotation
.end field

.field private final blacklist valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$MapAdapter$Converter<",
            "TRealValue;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TRealValue;>;",
            "Lcom/android/framework/protobuf/Internal$MapAdapter$Converter<",
            "TRealValue;TV;>;)V"
        }
    .end annotation

    .line 432
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 433
    iput-object p1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    .line 434
    iput-object p2, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    .line 435
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    return-object p0
.end method

.method public static blacklist newEnumConverter(Lcom/android/framework/protobuf/Internal$EnumLiteMap;Lcom/android/framework/protobuf/Internal$EnumLite;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/Internal$EnumLite;",
            ">(",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "TT;>;TT;)",
            "Lcom/android/framework/protobuf/Internal$MapAdapter$Converter<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .line 415
    new-instance v0, Lcom/android/framework/protobuf/Internal$MapAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$1;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;Lcom/android/framework/protobuf/Internal$EnumLite;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/android/framework/protobuf/Internal$MapAdapter$SetAdapter;

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/Internal$MapAdapter$SetAdapter;-><init>(Lcom/android/framework/protobuf/Internal$MapAdapter;Ljava/util/Set;)V

    return-object v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 440
    if-nez p1, :cond_a

    .line 441
    const/4 p1, 0x0

    return-object p1

    .line 443
    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, p2}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 449
    if-nez p1, :cond_10

    .line 450
    const/4 p1, 0x0

    return-object p1

    .line 452
    :cond_10
    iget-object p2, p0, Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {p2, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
