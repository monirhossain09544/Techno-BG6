.class public Landroid/os/HidlSupport;
.super Ljava/lang/Object;
.source "HidlSupport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HidlSupport$Mutable;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 47
    return v0

    .line 49
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_79

    if-nez p1, :cond_a

    goto :goto_79

    .line 53
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 55
    if-eq v2, v3, :cond_15

    .line 56
    return v1

    .line 59
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 60
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 61
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 62
    return v1

    .line 65
    :cond_26
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 66
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 69
    :cond_31
    check-cast p0, [Ljava/lang/Object;

    .line 70
    check-cast p1, [Ljava/lang/Object;

    .line 71
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_4a

    array-length v2, p0

    .line 72
    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Landroid/os/HidlSupport$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/os/HidlSupport$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    .line 71
    :goto_4b
    return v0

    .line 76
    :cond_4c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_71

    .line 77
    check-cast p0, Ljava/util/List;

    .line 78
    check-cast p1, Ljava/util/List;

    .line 79
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_5f

    .line 80
    return v1

    .line 83
    :cond_5f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/os/HidlSupport$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/os/HidlSupport$$ExternalSyntheticLambda3;-><init>(Ljava/util/Iterator;)V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 84
    return p0

    .line 88
    :cond_71
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 50
    :cond_79
    :goto_79
    return v1
.end method

.method public static whitelist deepHashCode(Ljava/lang/Object;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 p0, 0x0

    return p0

    .line 122
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 126
    invoke-static {p0}, Landroid/os/HidlSupport;->primitiveArrayHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 128
    :cond_1d
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/os/HidlSupport$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/HidlSupport$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 128
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0

    .line 133
    :cond_35
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_51

    .line 134
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/os/HidlSupport$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/HidlSupport$$ExternalSyntheticLambda1;-><init>()V

    .line 135
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 134
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0

    .line 139
    :cond_51
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static native whitelist getPidIfSharable()I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public static whitelist interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 202
    if-ne p0, p1, :cond_4

    .line 203
    const/4 p0, 0x1

    return p0

    .line 205
    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    .line 208
    :cond_a
    instance-of v1, p1, Landroid/os/IHwInterface;

    if-nez v1, :cond_f

    .line 209
    return v0

    .line 211
    :cond_f
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    check-cast p1, Landroid/os/IHwInterface;

    invoke-interface {p1}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 206
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static native blacklist isHidlSupported()Z
.end method

.method static synthetic blacklist lambda$deepEquals$0([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 3

    .line 73
    aget-object p0, p0, p2

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 2

    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$deepHashCode$2(Ljava/lang/Object;)I
    .registers 1

    .line 129
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$deepHashCode$3(Ljava/lang/Object;)I
    .registers 1

    .line 135
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static greylist-max-o primitiveArrayHashCode(Ljava/lang/Object;)I
    .registers 3

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 161
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    .line 162
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result p0

    return p0

    .line 164
    :cond_13
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1e

    .line 165
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0

    .line 167
    :cond_1e
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_29

    .line 168
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result p0

    return p0

    .line 170
    :cond_29
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    .line 171
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    return p0

    .line 173
    :cond_34
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3f

    .line 174
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0

    .line 176
    :cond_3f
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4a

    .line 177
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0

    .line 179
    :cond_4a
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_55

    .line 180
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    return p0

    .line 182
    :cond_55
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_60

    .line 183
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result p0

    return p0

    .line 186
    :cond_60
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private static greylist-max-o throwErrorIfUnsupportedType(Ljava/lang/Object;)V
    .registers 4

    .line 146
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2a

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_9

    goto :goto_2a

    .line 147
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot check equality on collections other than lists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2a
    :goto_2a
    instance-of p0, p0, Ljava/util/Map;

    if-nez p0, :cond_2f

    .line 156
    return-void

    .line 153
    :cond_2f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot check equality on maps"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
