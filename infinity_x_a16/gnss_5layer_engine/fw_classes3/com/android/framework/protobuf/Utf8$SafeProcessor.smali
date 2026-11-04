.class final Lcom/android/framework/protobuf/Utf8$SafeProcessor;
.super Lcom/android/framework/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 838
    invoke-direct {p0}, Lcom/android/framework/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static blacklist partialIsValidUtf8([BII)I
    .registers 4

    .line 1076
    nop

    :goto_1
    if-ge p1, p2, :cond_a

    aget-byte v0, p0, p1

    if-ltz v0, :cond_a

    .line 1077
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1080
    :cond_a
    if-lt p1, p2, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result p0

    :goto_12
    return p0
.end method

.method private static blacklist partialIsValidUtf8NonAscii([BII)I
    .registers 9

    .line 1090
    nop

    :goto_1
    if-lt p1, p2, :cond_5

    .line 1091
    const/4 p0, 0x0

    return p0

    .line 1093
    :cond_5
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_6e

    .line 1095
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_20

    .line 1098
    if-lt v0, p2, :cond_15

    .line 1100
    return p1

    .line 1105
    :cond_15
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_1f

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_6c

    .line 1106
    :cond_1f
    return v2

    .line 1108
    :cond_20
    const/16 v4, -0x10

    if-ge p1, v4, :cond_46

    .line 1111
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_2d

    .line 1112
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor([BII)I
    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    .line 1114
    :cond_2d
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_45

    const/16 v5, -0x60

    if-ne p1, v1, :cond_39

    if-lt v0, v5, :cond_45

    :cond_39
    const/16 v1, -0x13

    if-ne p1, v1, :cond_3f

    if-ge v0, v5, :cond_45

    :cond_3f
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_6c

    .line 1121
    :cond_45
    return v2

    .line 1126
    :cond_46
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_4f

    .line 1127
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor([BII)I
    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    .line 1129
    :cond_4f
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_6d

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_6d

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v3, :cond_6d

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v3, :cond_6b

    goto :goto_6d

    :cond_6b
    move p1, v0

    .line 1142
    :cond_6c
    goto :goto_1

    .line 1139
    :cond_6d
    :goto_6d
    return v2

    .line 1093
    :cond_6e
    move p1, v0

    goto :goto_1
.end method


# virtual methods
.method blacklist decodeUtf8([BII)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 936
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_ac

    .line 941
    nop

    .line 942
    add-int v0, p2, p3

    .line 946
    new-array v5, p3, [C

    .line 947
    const/4 p3, 0x0

    move v1, p3

    .line 951
    :goto_f
    if-ge p2, v0, :cond_23

    .line 952
    aget-byte v2, p1, p2

    .line 953
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 954
    goto :goto_23

    .line 956
    :cond_1a
    add-int/lit8 p2, p2, 0x1

    .line 957
    add-int/lit8 v3, v1, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v5, v1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 958
    move v1, v3

    goto :goto_f

    .line 960
    :cond_23
    :goto_23
    move v6, v1

    :goto_24
    if-ge p2, v0, :cond_a6

    .line 961
    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    .line 962
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 963
    add-int/lit8 v2, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {p2, v5, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 966
    :goto_35
    if-ge v1, v0, :cond_49

    .line 967
    aget-byte p2, p1, v1

    .line 968
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_40

    .line 969
    goto :goto_49

    .line 971
    :cond_40
    add-int/lit8 v1, v1, 0x1

    .line 972
    add-int/lit8 v3, v2, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {p2, v5, v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 973
    move v2, v3

    goto :goto_35

    .line 1003
    :cond_49
    :goto_49
    move p2, v1

    move v6, v2

    goto :goto_a0

    .line 974
    :cond_4c
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 975
    if-ge v1, v0, :cond_60

    .line 978
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v3, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {p2, v1, v5, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v2

    move v6, v3

    goto :goto_a0

    .line 976
    :cond_60
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 979
    :cond_65
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 980
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7f

    .line 983
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {p2, v1, v2, v5, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v3

    move v6, v4

    goto :goto_a0

    .line 981
    :cond_7f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 990
    :cond_84
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_a1

    .line 993
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v7, v3, 0x1

    aget-byte v4, p1, v3

    add-int/lit8 v8, v6, 0x1

    move v3, v2

    move v2, v1

    move v1, p2

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1001
    add-int/lit8 v8, v8, 0x1

    move p2, v7

    move v6, v8

    .line 1003
    :goto_a0
    goto :goto_24

    .line 991
    :cond_a1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1005
    :cond_a6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 937
    :cond_ac
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 938
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1012
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method blacklist encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 1017
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1018
    nop

    .line 1019
    nop

    .line 1020
    add-int/2addr p4, p3

    const/4 v1, 0x0

    .line 1023
    :goto_8
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1c

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1c

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1c

    .line 1024
    int-to-byte v2, v4

    aput-byte v2, p2, v3

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1026
    :cond_1c
    if-ne v1, v0, :cond_20

    .line 1027
    add-int/2addr p3, v0

    return p3

    .line 1029
    :cond_20
    add-int/2addr p3, v1

    .line 1030
    :goto_21
    if-ge v1, v0, :cond_104

    .line 1031
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1032
    if-ge v3, v2, :cond_33

    if-ge p3, p4, :cond_33

    .line 1033
    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_b8

    .line 1034
    :cond_33
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4d

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4d

    .line 1035
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1036
    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    goto :goto_b8

    .line 1037
    :cond_4d
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_57

    if-ge v4, v3, :cond_78

    :cond_57
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_78

    .line 1039
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1040
    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 1041
    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    move p3, v4

    goto :goto_b8

    .line 1042
    :cond_78
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c5

    .line 1046
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_bd

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1049
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1050
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1051
    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 1052
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 1053
    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    .line 1054
    move v1, v4

    .line 1030
    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 1046
    :cond_bc
    move v1, v4

    .line 1047
    :cond_bd
    new-instance p1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1057
    :cond_c5
    if-gt v5, v3, :cond_e1

    if-gt v3, v4, :cond_e1

    add-int/lit8 p2, v1, 0x1

    .line 1058
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_db

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_e1

    .line 1059
    :cond_db
    new-instance p1, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1061
    :cond_e1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1064
    :cond_104
    return p3
.end method

.method blacklist encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1070
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 1071
    return-void
.end method

.method blacklist partialIsValidUtf8(I[BII)I
    .registers 11

    .line 841
    if-eqz p1, :cond_8a

    .line 849
    if-lt p3, p4, :cond_5

    .line 850
    return p1

    .line 852
    :cond_5
    int-to-byte v0, p1

    .line 854
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1c

    .line 859
    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1b

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_18

    goto :goto_1b

    :cond_18
    move p3, p1

    goto/16 :goto_8a

    .line 862
    :cond_1b
    :goto_1b
    return v2

    .line 864
    :cond_1c
    const/16 v4, -0x10

    if-ge v0, v4, :cond_4c

    .line 868
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 869
    if-nez p1, :cond_34

    .line 870
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    .line 871
    if-lt p1, p4, :cond_31

    .line 872
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, p3}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 871
    :cond_31
    move v5, p3

    move p3, p1

    move p1, v5

    .line 875
    :cond_34
    if-gt p1, v3, :cond_4b

    const/16 v4, -0x60

    if-ne v0, v1, :cond_3c

    if-lt p1, v4, :cond_4b

    :cond_3c
    const/16 v1, -0x13

    if-ne v0, v1, :cond_42

    if-ge p1, v4, :cond_4b

    :cond_42
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_49

    goto :goto_4b

    .line 884
    :cond_49
    move p3, p1

    goto :goto_8a

    .line 882
    :cond_4b
    :goto_4b
    return v2

    .line 888
    :cond_4c
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 889
    nop

    .line 890
    if-nez v1, :cond_60

    .line 891
    add-int/lit8 p1, p3, 0x1

    aget-byte v1, p2, p3

    .line 892
    if-lt p1, p4, :cond_5e

    .line 893
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 892
    :cond_5e
    const/4 p3, 0x0

    goto :goto_66

    .line 896
    :cond_60
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    .line 898
    :goto_66
    if-nez p3, :cond_76

    .line 899
    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    .line 900
    if-lt p3, p4, :cond_73

    .line 901
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 900
    :cond_73
    move v5, p3

    move p3, p1

    move p1, v5

    .line 909
    :cond_76
    if-gt v1, v3, :cond_89

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_89

    if-gt p3, v3, :cond_89

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v3, :cond_8a

    .line 919
    :cond_89
    return v2

    .line 924
    :cond_8a
    :goto_8a
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result p1

    return p1
.end method

.method blacklist partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 5

    .line 930
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method
