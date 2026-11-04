.class Lcom/android/framework/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final blacklist prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/RopeByteString$1;)V
    .registers 2

    .line 605
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/framework/protobuf/RopeByteString$Balancer;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private blacklist balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 5

    .line 612
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 613
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 616
    iget-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    .line 617
    :goto_e
    iget-object p2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    .line 618
    iget-object p2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    .line 619
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 620
    move-object p1, v0

    goto :goto_e

    .line 623
    :cond_26
    return-object p1
.end method

.method private blacklist doBalance(Lcom/android/framework/protobuf/ByteString;)V
    .registers 5

    .line 631
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 632
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->insert(Lcom/android/framework/protobuf/ByteString;)V

    goto :goto_1f

    .line 633
    :cond_a
    instance-of v0, p1, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v0, :cond_20

    .line 634
    check-cast p1, Lcom/android/framework/protobuf/RopeByteString;

    .line 635
    # getter for: Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;
    invoke-static {p1}, Lcom/android/framework/protobuf/RopeByteString;->access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 636
    # getter for: Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;
    invoke-static {p1}, Lcom/android/framework/protobuf/RopeByteString;->access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 637
    nop

    .line 641
    :goto_1f
    return-void

    .line 638
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getDepthBinForLength(I)I
    .registers 3

    .line 694
    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    .line 695
    if-gez p1, :cond_d

    .line 698
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    .line 699
    add-int/lit8 p1, p1, -0x1

    .line 702
    :cond_d
    return p1
.end method

.method private blacklist insert(Lcom/android/framework/protobuf/ByteString;)V
    .registers 7

    .line 656
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 657
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 663
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_26

    goto/16 :goto_96

    .line 666
    :cond_26
    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    .line 670
    :goto_32
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_58

    .line 671
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    .line 672
    new-instance v4, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v4, v2, v1, v3}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 673
    move-object v1, v4

    goto :goto_32

    .line 676
    :cond_58
    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1, v3}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 679
    :goto_5d
    iget-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_90

    .line 680
    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result p1

    .line 681
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result p1

    .line 682
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_90

    .line 683
    iget-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    .line 684
    new-instance v1, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0, v3}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 685
    move-object v0, v1

    goto :goto_5d

    .line 689
    :cond_90
    iget-object p1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_9b

    .line 664
    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 691
    :goto_9b
    return-void
.end method
