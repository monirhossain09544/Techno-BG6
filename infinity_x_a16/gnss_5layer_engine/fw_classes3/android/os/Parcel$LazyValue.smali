.class final Landroid/os/Parcel$LazyValue;
.super Ljava/lang/Object;
.source "Parcel.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Class<",
        "*>;[",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mLength:I

.field private final blacklist mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

.field private blacklist mObject:Ljava/lang/Object;

.field private final blacklist mPosition:I

.field private volatile blacklist mSource:Landroid/os/Parcel;

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;IIILandroid/os/Parcel$ClassLoaderProvider;)V
    .registers 6

    .line 4839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    iput-object p1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4841
    iput p2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    .line 4842
    iput p3, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    .line 4843
    iput p4, p0, Landroid/os/Parcel$LazyValue;->mType:I

    .line 4844
    iput-object p5, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    .line 4845
    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4849
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4850
    if-eqz v0, :cond_30

    .line 4851
    monitor-enter v0

    .line 4853
    :try_start_5
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_2b

    .line 4854
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_2d

    .line 4856
    :try_start_d
    iget v2, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4857
    iget-object v2, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v2}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2, p1, p2}, Landroid/os/Parcel;->-$$Nest$mreadValue(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_26

    .line 4860
    :try_start_1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4861
    nop

    .line 4862
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    goto :goto_2b

    .line 4860
    :catchall_26
    move-exception p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4861
    throw p1

    .line 4864
    :cond_2b
    :goto_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2d

    throw p1

    .line 4866
    :cond_30
    :goto_30
    iget-object p1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4810
    check-cast p1, Ljava/lang/Class;

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel$LazyValue;->apply(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 4916
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4917
    return v0

    .line 4919
    :cond_4
    instance-of v1, p1, Landroid/os/Parcel$LazyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 4920
    return v2

    .line 4922
    :cond_a
    check-cast p1, Landroid/os/Parcel$LazyValue;

    .line 4924
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4925
    iget-object v3, p1, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4926
    if-nez v1, :cond_14

    move v4, v0

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    if-eq v4, v0, :cond_1c

    .line 4927
    return v2

    .line 4930
    :cond_1c
    if-nez v1, :cond_27

    .line 4934
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4937
    :cond_27
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v0}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    .line 4938
    invoke-interface {v4}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 4937
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4939
    return v2

    .line 4942
    :cond_3a
    iget v0, p0, Landroid/os/Parcel$LazyValue;->mType:I

    iget v4, p1, Landroid/os/Parcel$LazyValue;->mType:I

    if-ne v0, v4, :cond_52

    iget v0, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    iget v4, p1, Landroid/os/Parcel$LazyValue;->mLength:I

    if-eq v0, v4, :cond_47

    goto :goto_52

    .line 4946
    :cond_47
    iget v0, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget p1, p1, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-static {v1, v0, v3, p1, v2}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;ILandroid/os/Parcel;II)Z

    move-result p1

    return p1

    .line 4943
    :cond_52
    :goto_52
    return v2
.end method

.method public blacklist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 4899
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v0}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasFileDescriptors()Z
    .registers 4

    .line 4884
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4885
    if-eqz v0, :cond_18

    .line 4886
    monitor-enter v0

    .line 4887
    :try_start_5
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_13

    .line 4888
    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->hasFileDescriptors(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4890
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1

    .line 4893
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 4952
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    iget-object v2, p0, Landroid/os/Parcel$LazyValue;->mLoaderProvider:Landroid/os/Parcel$ClassLoaderProvider;

    invoke-interface {v2}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget v3, p0, Landroid/os/Parcel$LazyValue;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    .line 4953
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 4952
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4904
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    const-string v1, "Supplier{"

    if-eqz v0, :cond_3c

    .line 4905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mType:I

    invoke-static {v1}, Landroid/os/Parcel;->-$$Nest$smvalueTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 4906
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4904
    :goto_56
    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 4870
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    .line 4871
    if-eqz v0, :cond_17

    .line 4872
    monitor-enter v0

    .line 4873
    :try_start_5
    iget-object v1, p0, Landroid/os/Parcel$LazyValue;->mSource:Landroid/os/Parcel;

    if-eqz v1, :cond_12

    .line 4874
    iget v1, p0, Landroid/os/Parcel$LazyValue;->mPosition:I

    iget v2, p0, Landroid/os/Parcel$LazyValue;->mLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 4875
    monitor-exit v0

    return-void

    .line 4877
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p1

    .line 4880
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/os/Parcel$LazyValue;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4881
    return-void
.end method
