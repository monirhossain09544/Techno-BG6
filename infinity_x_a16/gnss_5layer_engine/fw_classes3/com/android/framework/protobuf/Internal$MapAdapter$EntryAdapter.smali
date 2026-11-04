.class Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist realEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;)V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    .line 506
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 529
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 530
    return v0

    .line 532
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 533
    return v2

    .line 535
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 536
    invoke-virtual {p0}, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    # getter for: Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v0}, Lcom/android/framework/protobuf/Internal$MapAdapter;->access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    # getter for: Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v1}, Lcom/android/framework/protobuf/Internal$MapAdapter;->access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 521
    if-nez p1, :cond_14

    .line 522
    const/4 p1, 0x0

    return-object p1

    .line 524
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    # getter for: Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v0}, Lcom/android/framework/protobuf/Internal$MapAdapter;->access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
