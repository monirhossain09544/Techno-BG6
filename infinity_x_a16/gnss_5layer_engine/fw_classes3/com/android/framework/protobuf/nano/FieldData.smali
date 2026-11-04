.class Lcom/android/framework/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist cachedExtension:Lcom/android/framework/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private blacklist unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    .line 50
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private blacklist toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method blacklist addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final blacklist clone()Lcom/android/framework/protobuf/nano/FieldData;
    .registers 6

    .line 192
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    .line 194
    :try_start_5
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    .line 195
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_11

    .line 196
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_18

    .line 198
    :cond_11
    iget-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_18
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v1, :cond_1e

    goto/16 :goto_d8

    .line 206
    :cond_1e
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v1, :cond_30

    .line 207
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_d8

    .line 208
    :cond_30
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_42

    .line 209
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_d8

    .line 210
    :cond_42
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_65

    .line 211
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [[B

    .line 212
    array-length v3, v1

    new-array v3, v3, [[B

    .line 213
    iput-object v3, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 214
    nop

    :goto_53
    array-length v4, v1

    if-ge v2, v4, :cond_63

    .line 215
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 217
    :cond_63
    goto/16 :goto_d8

    :cond_65
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_76

    .line 218
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 219
    :cond_76
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_87

    .line 220
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 221
    :cond_87
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_98

    .line 222
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 223
    :cond_98
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_a9

    .line 224
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 225
    :cond_a9
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_ba

    .line 226
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 227
    :cond_ba
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v1, :cond_d8

    .line 228
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/android/framework/protobuf/nano/MessageNano;

    .line 229
    array-length v3, v1

    new-array v3, v3, [Lcom/android/framework/protobuf/nano/MessageNano;

    .line 230
    iput-object v3, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    nop

    :goto_ca
    array-length v4, v1

    if-ge v2, v4, :cond_d8

    .line 232
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_d5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_d5} :catch_d9

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 235
    :cond_d8
    :goto_d8
    return-object v0

    .line 236
    :catch_d9
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method blacklist computeSerializedSize()I
    .registers 4

    .line 99
    nop

    .line 100
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 101
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_28

    .line 103
    :cond_e
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 104
    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 105
    goto :goto_15

    .line 103
    :cond_27
    move v0, v1

    .line 107
    :goto_28
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 122
    if-ne p1, p0, :cond_4

    .line 123
    const/4 p1, 0x1

    return p1

    .line 125
    :cond_4
    instance-of v0, p1, Lcom/android/framework/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 126
    return v1

    .line 129
    :cond_a
    check-cast p1, Lcom/android/framework/protobuf/nano/FieldData;

    .line 130
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_ad

    iget-object v0, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_ad

    .line 134
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v2, p1, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-eq v0, v2, :cond_1b

    .line 135
    return v1

    .line 137
    :cond_1b
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v0, v0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 139
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 141
    :cond_2e
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_41

    .line 142
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 143
    :cond_41
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_54

    .line 144
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 145
    :cond_54
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_67

    .line 146
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 147
    :cond_67
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7a

    .line 148
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 149
    :cond_7a
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8d

    .line 150
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 151
    :cond_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_a0

    .line 152
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 154
    :cond_a0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 157
    :cond_ad
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_be

    iget-object v0, p1, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_be

    .line 159
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 163
    :cond_be
    :try_start_be
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_ca} :catch_cb

    return p1

    .line 164
    :catch_cb
    move-exception p1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method blacklist getUnknownField(I)Lcom/android/framework/protobuf/nano/UnknownFieldData;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 63
    return-object v1

    .line 65
    :cond_6
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 66
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    return-object p1

    .line 68
    :cond_17
    return-object v1
.end method

.method blacklist getUnknownFieldSize()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_6

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-ne v0, p1, :cond_9

    goto :goto_1e

    .line 81
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to getExtension with a differernt Extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_11
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    .line 86
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 87
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 89
    :goto_1e
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 172
    nop

    .line 175
    :try_start_1
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_e

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 179
    nop

    .line 180
    return v1

    .line 176
    :catch_e
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    .line 94
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 96
    return-void
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/framework/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_22

    .line 114
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 115
    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 116
    goto :goto_12

    .line 118
    :cond_22
    :goto_22
    return-void
.end method
