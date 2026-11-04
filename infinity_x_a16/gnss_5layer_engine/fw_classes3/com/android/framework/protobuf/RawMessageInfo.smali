.class final Lcom/android/framework/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist IS_EDITION_BIT:I = 0x4

.field private static final blacklist IS_PROTO2_BIT:I = 0x1


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist flags:I

.field private final blacklist info:Ljava/lang/String;

.field private final blacklist objects:[Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 163
    iput-object p2, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 165
    nop

    .line 166
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 167
    const p3, 0xd800

    if-ge p1, p3, :cond_17

    .line 168
    iput p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    goto :goto_31

    .line 170
    :cond_17
    and-int/lit16 p1, p1, 0x1fff

    .line 171
    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 172
    :goto_1c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_2c

    .line 173
    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    .line 174
    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1c

    .line 176
    :cond_2c
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    .line 178
    :goto_31
    return-void
.end method


# virtual methods
.method public blacklist getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method blacklist getObjects()[Ljava/lang/Object;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getStringInfo()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 3

    .line 195
    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 196
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0

    .line 197
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    .line 198
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->EDITIONS:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0

    .line 200
    :cond_12
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public blacklist isMessageSetWireFormat()Z
    .registers 3

    .line 206
    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
