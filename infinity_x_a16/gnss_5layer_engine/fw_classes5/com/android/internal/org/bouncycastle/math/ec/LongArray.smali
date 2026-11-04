.class Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist INTERLEAVE2_TABLE:[S

.field private static final blacklist INTERLEAVE3_TABLE:[I

.field private static final blacklist INTERLEAVE4_TABLE:[I

.field private static final blacklist INTERLEAVE5_TABLE:[I

.field private static final blacklist INTERLEAVE7_TABLE:[J

.field private static final blacklist ZEROES:Ljava/lang/String; = "0000000000000000000000000000000000000000000000000000000000000000"

.field static final blacklist bitLengths:[B


# instance fields
.field private blacklist m_ints:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 18
    const/16 v0, 0x100

    new-array v1, v0, [S

    fill-array-data v1, :array_34

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    .line 57
    const/16 v1, 0x80

    new-array v1, v1, [I

    fill-array-data v1, :array_138

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    .line 80
    new-array v1, v0, [I

    fill-array-data v1, :array_23c

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    .line 119
    const/16 v1, 0x80

    new-array v1, v1, [I

    fill-array-data v1, :array_440

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    .line 141
    const/16 v1, 0x200

    new-array v1, v1, [J

    fill-array-data v1, :array_544

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    .line 276
    new-array v0, v0, [B

    fill-array-data v0, :array_d48

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    nop

    :array_34
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_138
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    :array_23c
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    :array_440
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    :array_544
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    :array_d48
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 303
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 14

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_6b

    .line 330
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1c

    .line 332
    new-array p1, v4, [J

    aput-wide v1, p1, v3

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 333
    return-void

    .line 336
    :cond_1c
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 337
    array-length v0, p1

    .line 338
    nop

    .line 339
    aget-byte v5, p1, v3

    if-nez v5, :cond_2a

    .line 343
    add-int/lit8 v0, v0, -0x1

    .line 344
    move v5, v4

    goto :goto_2b

    .line 339
    :cond_2a
    move v5, v3

    .line 346
    :goto_2b
    add-int/lit8 v6, v0, 0x7

    const/16 v7, 0x8

    div-int/2addr v6, v7

    .line 347
    new-array v8, v6, [J

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 349
    sub-int/2addr v6, v4

    .line 350
    rem-int/2addr v0, v7

    add-int/2addr v0, v5

    .line 351
    nop

    .line 352
    nop

    .line 353
    if-ge v5, v0, :cond_4f

    move-wide v8, v1

    .line 355
    :goto_3c
    if-ge v5, v0, :cond_48

    .line 357
    shl-long/2addr v8, v7

    .line 358
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .line 359
    int-to-long v10, v4

    or-long/2addr v8, v10

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 361
    :cond_48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v4, v6, -0x1

    aput-wide v8, v0, v6

    move v6, v4

    .line 364
    :cond_4f
    :goto_4f
    if-ltz v6, :cond_6a

    .line 366
    nop

    .line 367
    move-wide v8, v1

    move v0, v3

    :goto_54
    if-ge v0, v7, :cond_63

    .line 369
    shl-long/2addr v8, v7

    .line 370
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 371
    int-to-long v10, v5

    or-long/2addr v8, v10

    .line 367
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    goto :goto_54

    .line 373
    :cond_63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v8, v0, v6

    .line 364
    add-int/lit8 v6, v6, -0x1

    goto :goto_4f

    .line 375
    :cond_6a
    return-void

    .line 327
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid F2m field value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>([J)V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 308
    return-void
.end method

.method public constructor blacklist <init>([JII)V
    .registers 6

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    if-nez p2, :cond_b

    array-length v0, p1

    if-ne p3, v0, :cond_b

    .line 314
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    goto :goto_15

    .line 318
    :cond_b
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 319
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :goto_15
    return-void
.end method

.method private static blacklist add([JI[JII)V
    .registers 11

    .line 726
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_11

    .line 728
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 730
    :cond_11
    return-void
.end method

.method private static blacklist add([JI[JI[JII)V
    .registers 13

    .line 734
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p6, :cond_13

    .line 736
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 738
    :cond_13
    return-void
.end method

.method private static blacklist addBoth([JI[JI[JII)V
    .registers 15

    .line 742
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p6, :cond_16

    .line 744
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    :cond_16
    return-void
.end method

.method private blacklist addShiftedByBitsSafe(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;II)V
    .registers 10

    .line 662
    add-int/lit8 p2, p2, 0x3f

    ushr-int/lit8 v4, p2, 0x6

    .line 664
    ushr-int/lit8 v1, p3, 0x6

    .line 665
    and-int/lit8 v5, p3, 0x3f

    .line 667
    if-nez v5, :cond_13

    .line 669
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 p3, 0x0

    invoke-static {p2, v1, p1, p3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 670
    return-void

    .line 673
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide p1

    .line 674
    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_2a

    .line 676
    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/2addr v4, v1

    aget-wide v0, p3, v4

    xor-long/2addr p1, v0

    aput-wide p1, p3, v4

    .line 678
    :cond_2a
    return-void
.end method

.method private static blacklist addShiftedDown([JI[JIII)J
    .registers 16

    .line 695
    rsub-int/lit8 v0, p5, 0x40

    .line 696
    nop

    .line 697
    const-wide/16 v1, 0x0

    .line 698
    :goto_5
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_1a

    .line 700
    add-int v3, p3, p4

    aget-wide v3, p2, v3

    .line 701
    add-int v5, p1, p4

    aget-wide v6, p0, v5

    ushr-long v8, v3, p5

    or-long/2addr v1, v8

    xor-long/2addr v1, v6

    aput-wide v1, p0, v5

    .line 702
    shl-long v1, v3, v0

    .line 703
    goto :goto_5

    .line 704
    :cond_1a
    return-wide v1
.end method

.method private static blacklist addShiftedUp([JI[JIII)J
    .registers 18

    .line 682
    rsub-int/lit8 v0, p5, 0x40

    .line 683
    nop

    .line 684
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    move/from16 v4, p4

    if-ge v3, v4, :cond_1d

    .line 686
    add-int v5, p3, v3

    aget-wide v5, p2, v5

    .line 687
    add-int v7, p1, v3

    aget-wide v8, p0, v7

    shl-long v10, v5, p5

    or-long/2addr v1, v10

    xor-long/2addr v1, v8

    aput-wide v1, p0, v7

    .line 688
    ushr-long v1, v5, v0

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 690
    :cond_1d
    return-wide v1
.end method

.method private static blacklist bitLength(J)I
    .registers 5

    .line 508
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 509
    if-nez v1, :cond_a

    .line 511
    long-to-int v1, p0

    .line 512
    const/4 v0, 0x0

    goto :goto_b

    .line 516
    :cond_a
    nop

    .line 519
    :goto_b
    ushr-int/lit8 p0, v1, 0x10

    .line 520
    if-nez p0, :cond_1f

    .line 522
    ushr-int/lit8 p0, v1, 0x8

    .line 523
    if-nez p0, :cond_18

    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p0, v1

    goto :goto_30

    :cond_18
    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p1, p0

    add-int/lit8 p0, p0, 0x8

    goto :goto_30

    .line 527
    :cond_1f
    ushr-int/lit8 p1, p0, 0x8

    .line 528
    if-nez p1, :cond_2a

    sget-object p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p1, p0

    add-int/lit8 p0, p0, 0x10

    goto :goto_30

    :cond_2a
    sget-object p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p0, p1

    add-int/lit8 p0, p0, 0x18

    .line 531
    :goto_30
    add-int/2addr v0, p0

    return v0
.end method

.method private blacklist degreeFrom(I)I
    .registers 6

    .line 467
    add-int/lit8 p1, p1, 0x3e

    ushr-int/lit8 p1, p1, 0x6

    .line 471
    :cond_4
    if-nez p1, :cond_8

    .line 473
    const/4 p1, 0x0

    return p1

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, v0, p1

    .line 477
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 479
    shl-int/lit8 p1, p1, 0x6

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private static blacklist distribute([JIIII)V
    .registers 11

    .line 750
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_18

    .line 752
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    .line 753
    add-int v3, p2, v0

    aget-wide v4, p0, v3

    xor-long/2addr v4, v1

    aput-wide v4, p0, v3

    .line 754
    add-int v3, p3, v0

    aget-wide v4, p0, v3

    xor-long/2addr v1, v4

    aput-wide v1, p0, v3

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    :cond_18
    return-void
.end method

.method private static blacklist flipBit([JII)V
    .registers 8

    .line 816
    ushr-int/lit8 v0, p2, 0x6

    .line 818
    and-int/lit8 p2, p2, 0x3f

    .line 819
    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    .line 820
    add-int/2addr p1, v0

    aget-wide v3, p0, p1

    xor-long v0, v3, v1

    aput-wide v0, p0, p1

    .line 821
    return-void
.end method

.method private static blacklist flipVector([JI[JIII)V
    .registers 12

    .line 1651
    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    .line 1652
    and-int/lit8 p5, p5, 0x3f

    .line 1654
    if-nez p5, :cond_b

    .line 1656
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_1c

    .line 1660
    :cond_b
    add-int/lit8 v1, p1, 0x1

    rsub-int/lit8 v5, p5, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide p2

    .line 1661
    aget-wide p4, v0, p1

    xor-long/2addr p2, p4

    aput-wide p2, v0, p1

    .line 1663
    :goto_1c
    return-void
.end method

.method private static blacklist flipWord([JIIJ)V
    .registers 9

    .line 765
    ushr-int/lit8 v0, p2, 0x6

    add-int/2addr p1, v0

    .line 766
    and-int/lit8 p2, p2, 0x3f

    .line 767
    if-nez p2, :cond_e

    .line 769
    aget-wide v0, p0, p1

    xor-long p2, v0, p3

    aput-wide p2, p0, p1

    goto :goto_26

    .line 773
    :cond_e
    aget-wide v0, p0, p1

    shl-long v2, p3, p2

    xor-long/2addr v0, v2

    aput-wide v0, p0, p1

    .line 774
    rsub-int/lit8 p2, p2, 0x40

    ushr-long p2, p3, p2

    .line 775
    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_26

    .line 777
    add-int/lit8 p1, p1, 0x1

    aget-wide v0, p0, p1

    xor-long/2addr p2, v0

    aput-wide p2, p0, p1

    .line 780
    :cond_26
    :goto_26
    return-void
.end method

.method private static blacklist interleave([JI[JIII)V
    .registers 12

    .line 1743
    packed-switch p5, :pswitch_data_20

    .line 1755
    :pswitch_3
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p5, v0, p5

    add-int/lit8 v5, p5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_n([JI[JIII)V

    goto :goto_1e

    .line 1752
    :pswitch_12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave7([JI[JII)V

    .line 1753
    goto :goto_1e

    .line 1749
    :pswitch_16
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave5([JI[JII)V

    .line 1750
    goto :goto_1e

    .line 1746
    :pswitch_1a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3([JI[JII)V

    .line 1747
    nop

    .line 1758
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_1a
        :pswitch_3
        :pswitch_16
        :pswitch_3
        :pswitch_12
    .end packed-switch
.end method

.method private static blacklist interleave2_32to64(I)J
    .registers 8

    .line 1908
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v0, v0, v1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1909
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 p0, p0, 0x18

    aget-short p0, v2, p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    .line 1910
    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 p0, 0x20

    shl-long/2addr v1, p0

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method private static blacklist interleave2_n(JI)J
    .registers 11

    .line 1884
    nop

    :goto_1
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-le p2, v1, :cond_37

    .line 1886
    add-int/lit8 p2, p2, -0x2

    .line 1887
    long-to-int v2, p0

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/16 v2, 0x10

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1888
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v6

    shl-long v1, v6, v1

    or-long/2addr v1, v4

    ushr-long v4, p0, v0

    long-to-int v0, v4

    and-int/2addr v0, v3

    .line 1889
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/4 v0, 0x2

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/16 v2, 0x30

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    and-int/2addr p0, v3

    .line 1890
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide p0

    const/4 v2, 0x3

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    goto :goto_1

    .line 1892
    :cond_37
    if-lez p2, :cond_46

    .line 1894
    long-to-int p2, p0

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide p0

    shl-long/2addr p0, v1

    or-long/2addr p0, v2

    .line 1896
    :cond_46
    return-wide p0
.end method

.method private static blacklist interleave2_n([JI[JIII)V
    .registers 10

    .line 1876
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_12

    .line 1878
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3, p5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_n(JI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1876
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1880
    :cond_12
    return-void
.end method

.method private static blacklist interleave3(J)J
    .registers 8

    .line 1770
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    .line 1771
    long-to-int v2, p0

    const v3, 0x1fffff

    and-int/2addr v2, v3

    .line 1772
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v4

    or-long/2addr v0, v4

    const/16 v2, 0x15

    ushr-long v4, p0, v2

    long-to-int v2, v4

    and-int/2addr v2, v3

    .line 1773
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v4

    const/4 v2, 0x1

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/16 v2, 0x2a

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    and-int/2addr p0, v3

    .line 1774
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide p0

    const/4 v2, 0x2

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 1771
    return-wide p0
.end method

.method private static blacklist interleave3([JI[JII)V
    .registers 9

    .line 1762
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_12

    .line 1764
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1762
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1766
    :cond_12
    return-void
.end method

.method private static blacklist interleave3_13to65(I)J
    .registers 8

    .line 1834
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    .line 1835
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    ushr-int/lit8 p0, p0, 0x7

    aget p0, v1, p0

    .line 1836
    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 p0, 0x23

    shl-long/2addr v1, p0

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method private static blacklist interleave3_21to63(I)J
    .registers 9

    .line 1794
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    .line 1795
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    ushr-int/lit8 v2, p0, 0x7

    and-int/lit8 v2, v2, 0x7f

    aget v1, v1, v2

    .line 1796
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    ushr-int/lit8 p0, p0, 0xe

    aget p0, v2, p0

    .line 1797
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p0, 0x2a

    shl-long/2addr v2, p0

    int-to-long v6, v1

    and-long/2addr v6, v4

    const/16 p0, 0x15

    shl-long/2addr v6, p0

    or-long v1, v2, v6

    int-to-long v6, v0

    and-long v3, v6, v4

    or-long v0, v1, v3

    return-wide v0
.end method

.method private static blacklist interleave4_16to64(I)J
    .registers 8

    .line 1901
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    .line 1902
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    ushr-int/lit8 p0, p0, 0x8

    aget p0, v1, p0

    .line 1903
    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 p0, 0x20

    shl-long/2addr v1, p0

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method private static blacklist interleave5(J)J
    .registers 7

    .line 1810
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0x1fff

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v0

    const/16 v2, 0xd

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1811
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x1a

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1812
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x27

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1813
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x34

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0x1fff

    .line 1814
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide p0

    const/4 v2, 0x4

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 1810
    return-wide p0
.end method

.method private static blacklist interleave5([JI[JII)V
    .registers 9

    .line 1802
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_12

    .line 1804
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave5(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1806
    :cond_12
    return-void
.end method

.method private static blacklist interleave7(J)J
    .registers 7

    .line 1849
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    .line 1850
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    long-to-int v3, p0

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    or-long/2addr v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x9

    ushr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x12

    ushr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x1b

    ushr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x24

    ushr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x2d

    ushr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v2, v2, v3

    const/4 v4, 0x5

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v3, 0x36

    ushr-long/2addr p0, v3

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0x1ff

    aget-wide p0, v2, p0

    const/4 v2, 0x6

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static blacklist interleave7([JI[JII)V
    .registers 9

    .line 1841
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_12

    .line 1843
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave7(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1845
    :cond_12
    return-void
.end method

.method private static blacklist multiplyWord(J[JI[JI)V
    .registers 21

    .line 845
    move/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v1, p5

    const-wide/16 v6, 0x1

    and-long v2, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_17

    .line 847
    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_19

    .line 845
    :cond_17
    move-object/from16 v3, p2

    .line 849
    :goto_19
    const/4 v10, 0x1

    move-wide v11, p0

    move v5, v10

    .line 850
    :goto_1c
    ushr-long/2addr v11, v10

    cmp-long v2, v11, v8

    if-eqz v2, :cond_44

    .line 852
    and-long v13, v11, v6

    cmp-long v2, v13, v8

    if-eqz v2, :cond_39

    .line 854
    const/4 v3, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v13

    .line 855
    cmp-long v0, v13, v8

    if-eqz v0, :cond_39

    .line 857
    add-int v0, p5, p3

    aget-wide v1, p4, v0

    xor-long/2addr v1, v13

    aput-wide v1, p4, v0

    .line 860
    :cond_39
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v1, p5

    goto :goto_1c

    .line 862
    :cond_44
    return-void
.end method

.method private static blacklist reduceBit([JIII[I)V
    .registers 6

    .line 1587
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1588
    sub-int/2addr p2, p3

    .line 1589
    array-length p3, p4

    .line 1590
    :goto_5
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_10

    .line 1592
    aget v0, p4, p3

    add-int/2addr v0, p2

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_5

    .line 1594
    :cond_10
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1595
    return-void
.end method

.method private static blacklist reduceBitWise([JIII[I)V
    .registers 6

    .line 1576
    nop

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_f

    .line 1578
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_1

    .line 1583
    :cond_f
    return-void
.end method

.method private static blacklist reduceInPlace([JIII[I)I
    .registers 16

    .line 1532
    add-int/lit8 v1, p3, 0x3f

    ushr-int/lit8 v6, v1, 0x6

    .line 1533
    if-ge p2, v6, :cond_7

    .line 1535
    return p2

    .line 1538
    :cond_7
    shl-int/lit8 v1, p2, 0x6

    shl-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1539
    sub-int/2addr v1, v2

    move v0, p2

    .line 1540
    :goto_13
    const/16 v7, 0x40

    if-lt v1, v7, :cond_1c

    .line 1542
    add-int/lit8 v0, v0, -0x1

    .line 1543
    add-int/lit8 v1, v1, -0x40

    goto :goto_13

    .line 1546
    :cond_1c
    array-length v8, p4

    add-int/lit8 v9, v8, -0x1

    aget v9, p4, v9

    if-le v8, v3, :cond_28

    add-int/lit8 v8, v8, -0x2

    aget v8, p4, v8

    goto :goto_29

    :cond_28
    const/4 v8, 0x0

    .line 1547
    :goto_29
    add-int/2addr v9, v7

    invoke-static {p3, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1548
    sub-int v9, v2, v7

    sub-int v8, p3, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v1, v8

    shr-int/lit8 v1, v1, 0x6

    .line 1549
    if-le v1, v3, :cond_57

    .line 1551
    sub-int v3, v0, v1

    .line 1552
    move v1, p1

    move v4, p3

    move-object v5, p4

    move v2, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    move v0, v2

    .line 1553
    :goto_46
    if-le v0, v3, :cond_51

    .line 1555
    add-int/lit8 v0, v0, -0x1

    add-int v1, p1, v0

    const-wide/16 v4, 0x0

    aput-wide v4, p0, v1

    goto :goto_46

    .line 1557
    :cond_51
    shl-int/lit8 v2, v3, 0x6

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_5a

    .line 1549
    :cond_57
    move v10, v2

    move v2, v0

    move v0, v10

    .line 1560
    :goto_5a
    if-le v0, v7, :cond_65

    .line 1562
    move-object v0, p0

    move v1, p1

    move v4, p3

    move-object v5, p4

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    .line 1563
    goto :goto_66

    .line 1560
    :cond_65
    move v7, v0

    .line 1566
    :goto_66
    if-le v7, p3, :cond_6b

    .line 1568
    invoke-static {p0, p1, v7, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    .line 1571
    :cond_6b
    return v6
.end method

.method private static blacklist reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 5

    .line 1499
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p2

    .line 1500
    new-instance p3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p3
.end method

.method private static blacklist reduceVectorWise([JIIII[I)V
    .registers 13

    .line 1640
    shl-int/lit8 v0, p3, 0x6

    sub-int/2addr v0, p4

    .line 1641
    array-length p4, p5

    .line 1642
    :goto_4
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_17

    .line 1644
    add-int v4, p1, p3

    sub-int v5, p2, p3

    aget v1, p5, p4

    add-int v6, v0, v1

    move-object v3, p0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    goto :goto_4

    .line 1646
    :cond_17
    move p4, p3

    add-int p3, p1, p4

    sub-int p4, p2, p4

    move-object p2, p0

    move p5, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    .line 1647
    return-void
.end method

.method private static blacklist reduceWord([JIIJI[I)V
    .registers 8

    .line 1624
    sub-int/2addr p2, p5

    .line 1625
    array-length p5, p6

    .line 1626
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_d

    .line 1628
    aget v0, p6, p5

    add-int/2addr v0, p2

    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_2

    .line 1630
    :cond_d
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    .line 1631
    return-void
.end method

.method private static blacklist reduceWordWise([JIIII[I)V
    .registers 23

    .line 1599
    ushr-int/lit8 v0, p3, 0x6

    move/from16 v1, p2

    .line 1601
    :goto_4
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    if-le v1, v0, :cond_22

    .line 1603
    add-int v4, p1, v1

    aget-wide v8, p0, v4

    .line 1604
    cmp-long v5, v8, v2

    if-eqz v5, :cond_21

    .line 1606
    aput-wide v2, p0, v4

    .line 1607
    shl-int/lit8 v7, v1, 0x6

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v5 .. v11}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1609
    :cond_21
    goto :goto_4

    .line 1612
    :cond_22
    and-int/lit8 v1, p3, 0x3f

    .line 1613
    add-int v0, p1, v0

    aget-wide v4, p0, v0

    ushr-long v13, v4, v1

    .line 1614
    cmp-long v2, v13, v2

    if-eqz v2, :cond_43

    .line 1616
    aget-wide v2, p0, v0

    shl-long v4, v13, v1

    xor-long v1, v2, v4

    aput-wide v1, p0, v0

    .line 1617
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    invoke-static/range {v10 .. v16}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1620
    :cond_43
    return-void
.end method

.method private blacklist resizedInts(I)[J
    .registers 5

    .line 536
    new-array v0, p1, [J

    .line 537
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    return-object v0
.end method

.method private static blacklist shiftUp([JIII)J
    .registers 13

    .line 596
    rsub-int/lit8 v0, p3, 0x40

    .line 597
    nop

    .line 598
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, p2, :cond_16

    .line 600
    add-int v4, p1, v3

    aget-wide v5, p0, v4

    .line 601
    shl-long v7, v5, p3

    or-long/2addr v1, v7

    aput-wide v1, p0, v4

    .line 602
    ushr-long v1, v5, v0

    .line 598
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 604
    :cond_16
    return-wide v1
.end method

.method private static blacklist shiftUp([JI[JIII)J
    .registers 15

    .line 609
    rsub-int/lit8 v0, p5, 0x40

    .line 610
    nop

    .line 611
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, p4, :cond_18

    .line 613
    add-int v4, p1, v3

    aget-wide v4, p0, v4

    .line 614
    add-int v6, p3, v3

    shl-long v7, v4, p5

    or-long/2addr v1, v7

    aput-wide v1, p2, v6

    .line 615
    ushr-long v1, v4, v0

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 617
    :cond_18
    return-wide v1
.end method

.method private static blacklist squareInPlace([JII[I)V
    .registers 8

    .line 1732
    shl-int/lit8 p2, p1, 0x1

    .line 1733
    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1f

    .line 1735
    aget-wide v0, p0, p1

    .line 1736
    add-int/lit8 p2, p2, -0x1

    const/16 p3, 0x20

    ushr-long v2, v0, p3

    long-to-int p3, v2

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    aput-wide v2, p0, p2

    .line 1737
    add-int/lit8 p2, p2, -0x1

    long-to-int p3, v0

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    .line 1738
    goto :goto_2

    .line 1739
    :cond_1f
    return-void
.end method

.method private static blacklist testBit([JII)Z
    .registers 6

    .line 806
    ushr-int/lit8 v0, p2, 0x6

    .line 808
    and-int/lit8 p2, p2, 0x3f

    .line 809
    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    .line 810
    add-int/2addr p1, v0

    aget-wide p0, p0, p1

    and-long/2addr p0, v1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method


# virtual methods
.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 7

    .line 622
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_13

    .line 624
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    new-array v4, v4, [J

    aput-wide v1, v4, v3

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0

    .line 627
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 628
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v0

    .line 629
    aget-wide v4, v0, v3

    xor-long/2addr v1, v4

    aput-wide v1, v0, v3

    .line 630
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v1
.end method

.method public blacklist addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V
    .registers 6

    .line 709
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 710
    if-nez v0, :cond_7

    .line 712
    return-void

    .line 715
    :cond_7
    add-int v1, v0, p2

    .line 716
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v1, v2, :cond_14

    .line 718
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 721
    :cond_14
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 722
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 2176
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method blacklist copyTo([JI)V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    return-void
.end method

.method public blacklist degree()I
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    .line 454
    :cond_3
    if-nez v0, :cond_7

    .line 456
    const/4 v0, 0x0

    return v0

    .line 458
    :cond_7
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v1, v0

    .line 460
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 462
    shl-int/lit8 v0, v0, 0x6

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 2139
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2141
    return v1

    .line 2143
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 2144
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2145
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    if-eq v2, v0, :cond_13

    .line 2147
    return v1

    .line 2149
    :cond_13
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_26

    .line 2151
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v3, v2

    iget-object v5, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v5, v5, v2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    .line 2153
    return v1

    .line 2149
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2156
    :cond_26
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist getLength()I
    .registers 2

    .line 760
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    return v0
.end method

.method public blacklist getUsedLength()I
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public blacklist getUsedLengthFrom(I)I
    .registers 9

    .line 419
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 420
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 422
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_c

    .line 424
    return v1

    .line 428
    :cond_c
    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    .line 430
    :goto_14
    add-int/lit8 p1, p1, -0x1

    aget-wide v3, v0, p1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1d

    goto :goto_14

    .line 433
    :cond_1d
    add-int/2addr p1, v2

    return p1

    .line 438
    :cond_1f
    add-int/lit8 p1, p1, -0x1

    aget-wide v3, v0, p1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_29

    .line 440
    add-int/2addr p1, v2

    return p1

    .line 443
    :cond_29
    if-gtz p1, :cond_1f

    .line 445
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 2161
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2162
    nop

    .line 2163
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1b

    .line 2165
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v3, v2

    .line 2166
    mul-int/lit8 v1, v1, 0x1f

    .line 2167
    long-to-int v5, v3

    xor-int/2addr v1, v5

    .line 2168
    mul-int/lit8 v1, v1, 0x1f

    .line 2169
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v1, v3

    .line 2163
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2171
    :cond_1b
    return v1
.end method

.method public blacklist isOne()Z
    .registers 9

    .line 384
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 385
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 387
    return v1

    .line 389
    :cond_c
    const/4 v2, 0x1

    move v3, v2

    :goto_e
    array-length v4, v0

    if-ge v3, v4, :cond_1d

    .line 391
    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1a

    .line 393
    return v1

    .line 389
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 396
    :cond_1d
    return v2
.end method

.method public blacklist isZero()Z
    .registers 8

    .line 401
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 402
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 404
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    .line 406
    return v1

    .line 402
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 409
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 13

    .line 2062
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    .line 2063
    if-eqz v0, :cond_8d

    .line 2067
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2069
    return-object p0

    .line 2073
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 2075
    add-int/lit8 v3, p1, 0x3f

    ushr-int/lit8 v3, v3, 0x6

    .line 2078
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2079
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, p1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    .line 2082
    new-instance p2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2083
    iget-object v5, p2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const-wide/16 v7, 0x1

    aput-wide v7, v5, v6

    .line 2084
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2086
    const/4 v3, 0x2

    new-array v7, v3, [I

    aput v0, v7, v6

    add-int/2addr p1, v1

    aput p1, v7, v1

    .line 2087
    filled-new-array {v2, v4}, [Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p1

    .line 2089
    new-array v0, v3, [I

    aput v1, v0, v6

    aput v6, v0, v1

    .line 2090
    filled-new-array {p2, v5}, [Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p2

    .line 2092
    nop

    .line 2093
    aget v2, v7, v1

    .line 2094
    aget v3, v0, v1

    .line 2095
    aget v4, v7, v6

    sub-int v4, v2, v4

    .line 2099
    :goto_4e
    if-gez v4, :cond_5b

    .line 2101
    neg-int v4, v4

    .line 2102
    aput v2, v7, v1

    .line 2103
    aput v3, v0, v1

    .line 2104
    rsub-int/lit8 v1, v1, 0x1

    .line 2105
    aget v2, v7, v1

    .line 2106
    aget v3, v0, v1

    .line 2109
    :cond_5b
    aget-object v5, p1, v1

    rsub-int/lit8 v6, v1, 0x1

    aget-object v8, p1, v6

    aget v9, v7, v6

    invoke-direct {v5, v8, v9, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;II)V

    .line 2111
    aget-object v5, p1, v1

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v5

    .line 2112
    if-nez v5, :cond_71

    .line 2114
    aget-object p1, p2, v6

    return-object p1

    .line 2118
    :cond_71
    aget v8, v0, v6

    .line 2119
    aget-object v9, p2, v1

    aget-object v6, p2, v6

    invoke-direct {v9, v6, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;II)V

    .line 2120
    add-int/2addr v8, v4

    .line 2122
    if-le v8, v3, :cond_7f

    .line 2124
    move v3, v8

    goto :goto_87

    .line 2126
    :cond_7f
    if-ne v8, v3, :cond_87

    .line 2128
    aget-object v6, p2, v1

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v3

    .line 2132
    :cond_87
    :goto_87
    sub-int v2, v5, v2

    add-int/2addr v4, v2

    .line 2133
    nop

    .line 2134
    move v2, v5

    goto :goto_4e

    .line 2065
    :cond_8d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public blacklist modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 24

    .line 1001
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 1002
    if-nez v2, :cond_b

    .line 1004
    return-object p0

    .line 1006
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 1007
    if-nez v3, :cond_12

    .line 1009
    return-object p1

    .line 1015
    :cond_12
    nop

    .line 1016
    if-le v2, v3, :cond_1d

    .line 1018
    nop

    .line 1019
    move v5, v2

    move v4, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_23

    .line 1016
    :cond_1d
    move v4, v2

    move v5, v3

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    .line 1025
    :goto_23
    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 1026
    add-int/lit8 v7, v5, 0x3f

    ushr-int/lit8 v11, v7, 0x6

    .line 1027
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v4, v4, 0x6

    .line 1029
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4c

    .line 1031
    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v8, v3, v7

    .line 1032
    const-wide/16 v5, 0x1

    cmp-long v3, v8, v5

    if-nez v3, :cond_3f

    .line 1034
    return-object v2

    .line 1040
    :cond_3f
    new-array v12, v4, [J

    .line 1041
    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1046
    invoke-static {v12, v7, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_4c
    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v13, v5, 0x6

    .line 1057
    const/16 v5, 0x10

    new-array v9, v5, [I

    .line 1062
    shl-int/lit8 v10, v13, 0x4

    new-array v12, v10, [J

    .line 1063
    nop

    .line 1064
    aput v13, v9, v8

    .line 1065
    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v2, v7, v12, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    const/4 v2, 0x2

    move v8, v13

    :goto_64
    if-ge v2, v5, :cond_8f

    .line 1068
    add-int v15, v8, v13

    aput v15, v9, v2

    .line 1069
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_7b

    .line 1071
    move/from16 v16, v13

    ushr-int/lit8 v13, v15, 0x1

    const/16 v17, 0x1

    move-object v14, v12

    invoke-static/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v13, v16

    goto :goto_8b

    .line 1075
    :cond_7b
    move/from16 v16, v13

    move/from16 v17, v15

    sub-int v15, v17, v16

    move-object v14, v12

    move-object/from16 v16, v12

    move/from16 v18, v13

    invoke-static/range {v12 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v15, v17

    .line 1066
    :goto_8b
    add-int/lit8 v2, v2, 0x1

    move v8, v15

    goto :goto_64

    .line 1082
    :cond_8f
    new-array v2, v10, [J

    .line 1083
    const/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v10

    move-object v14, v12

    invoke-static/range {v14 .. v19}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1086
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1087
    shl-int/lit8 v3, v4, 0x3

    new-array v12, v3, [J

    .line 1089
    nop

    .line 1095
    move v5, v7

    :goto_a6
    if-ge v5, v6, :cond_d9

    .line 1097
    aget-wide v10, v2, v5

    .line 1098
    move/from16 v18, v13

    move v13, v5

    .line 1101
    :goto_ad
    long-to-int v8, v10

    and-int/lit8 v8, v8, 0xf

    .line 1102
    const/16 v19, 0x4

    ushr-long v10, v10, v19

    .line 1103
    long-to-int v15, v10

    and-int/lit8 v15, v15, 0xf

    .line 1104
    aget v8, v9, v8

    aget v17, v9, v15

    move v15, v8

    invoke-static/range {v12 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1105
    move-object v8, v12

    move-object v12, v14

    move v14, v13

    move/from16 v13, v18

    ushr-long v10, v10, v19

    .line 1106
    const-wide/16 v17, 0x0

    cmp-long v15, v10, v17

    if-nez v15, :cond_d2

    .line 1108
    nop

    .line 1095
    add-int/lit8 v5, v5, 0x1

    move-object v14, v12

    move-object v12, v8

    goto :goto_a6

    .line 1110
    :cond_d2
    add-int/2addr v14, v4

    .line 1111
    move/from16 v18, v13

    move v13, v14

    move-object v14, v12

    move-object v12, v8

    goto :goto_ad

    .line 1115
    :cond_d9
    move-object v8, v12

    .line 1116
    :goto_da
    sub-int v15, v3, v4

    if-eqz v15, :cond_eb

    .line 1118
    sub-int v13, v15, v4

    const/16 v17, 0x8

    move-object v14, v8

    move/from16 v16, v4

    move-object v12, v8

    invoke-static/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move v3, v15

    goto :goto_da

    .line 1125
    :cond_eb
    move v2, v4

    move-object v12, v8

    invoke-static {v12, v7, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist modMultiplyAlt(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 29

    .line 1133
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 1134
    if-nez v2, :cond_b

    .line 1136
    return-object p0

    .line 1138
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 1139
    if-nez v3, :cond_12

    .line 1141
    return-object p1

    .line 1147
    :cond_12
    nop

    .line 1148
    if-le v2, v3, :cond_1d

    .line 1150
    nop

    .line 1151
    move v5, v2

    move v4, v3

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    goto :goto_23

    .line 1148
    :cond_1d
    move v4, v2

    move v5, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1157
    :goto_23
    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v8, v6, 0x6

    .line 1158
    add-int/lit8 v6, v5, 0x3f

    ushr-int/lit8 v12, v6, 0x6

    .line 1159
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v4, v4, 0x6

    .line 1161
    const-wide/16 v19, 0x1

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-ne v8, v13, :cond_4c

    .line 1163
    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v9, v2, v6

    .line 1164
    cmp-long v2, v9, v19

    if-nez v2, :cond_3f

    .line 1166
    return-object v3

    .line 1172
    :cond_3f
    new-array v13, v4, [J

    .line 1173
    iget-object v11, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1178
    invoke-static {v13, v6, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    .line 1214
    :cond_4c
    move v14, v12

    .line 1222
    nop

    .line 1223
    const/16 v15, 0xf

    add-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v5, v5, 0x6

    .line 1225
    mul-int/lit8 v7, v5, 0x8

    .line 1230
    const/16 v9, 0x10

    new-array v10, v9, [I

    .line 1231
    nop

    .line 1233
    aput v8, v10, v6

    .line 1234
    add-int v11, v8, v7

    .line 1235
    aput v11, v10, v13

    .line 1236
    const/4 v12, 0x2

    :goto_63
    if-ge v12, v9, :cond_6b

    .line 1238
    add-int/2addr v11, v4

    .line 1239
    aput v11, v10, v12

    .line 1236
    add-int/lit8 v12, v12, 0x1

    goto :goto_63

    .line 1241
    :cond_6b
    add-int/2addr v11, v4

    .line 1244
    add-int/2addr v11, v13

    .line 1246
    new-array v11, v11, [J

    .line 1249
    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    move v12, v9

    move-object v9, v11

    move v11, v8

    const/4 v8, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move/from16 v17, v12

    const/4 v12, 0x4

    move/from16 v21, v7

    move-object v7, v2

    move/from16 v2, v21

    move-object/from16 v21, v16

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave([JI[JIII)V

    .line 1253
    move/from16 v16, v12

    .line 1254
    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v3, v6, v9, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1255
    move v8, v11

    move v12, v13

    :goto_8e
    const/16 v3, 0x8

    if-ge v12, v3, :cond_9f

    .line 1257
    add-int v10, v8, v5

    move-object v7, v9

    move v8, v11

    move v11, v5

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1255
    move v11, v8

    add-int/lit8 v12, v12, 0x1

    move v8, v10

    goto :goto_8e

    .line 1267
    :cond_9f
    nop

    .line 1269
    move v7, v6

    .line 1272
    :goto_a1
    move v8, v6

    .line 1275
    :goto_a2
    aget-wide v22, v9, v8

    ushr-long v22, v22, v7

    .line 1276
    move v12, v6

    move/from16 p1, v7

    move v10, v11

    move-wide/from16 v6, v22

    .line 1279
    :goto_ac
    long-to-int v14, v6

    and-int/2addr v14, v15

    .line 1280
    if-eqz v14, :cond_b6

    .line 1287
    aget v14, v21, v14

    add-int/2addr v14, v8

    invoke-static {v9, v14, v9, v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 1289
    :cond_b6
    add-int/2addr v12, v13

    if-ne v12, v3, :cond_139

    .line 1291
    nop

    .line 1297
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v11, :cond_12a

    .line 1299
    add-int/lit8 v7, p1, 0x20

    const/16 v6, 0x40

    if-lt v7, v6, :cond_11a

    .line 1301
    if-lt v7, v6, :cond_10f

    .line 1303
    nop

    .line 1320
    nop

    .line 1321
    :goto_c8
    add-int/lit8 v2, v17, -0x1

    if-le v2, v13, :cond_102

    .line 1323
    int-to-long v5, v2

    and-long v5, v5, v19

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_e8

    .line 1328
    ushr-int/lit8 v3, v2, 0x1

    aget v14, v21, v3

    aget v16, v21, v2

    const/16 v18, 0x10

    move-object v15, v9

    move/from16 v17, v4

    move v4, v13

    move-object v13, v9

    invoke-static/range {v13 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move/from16 v9, v17

    goto :goto_f9

    .line 1335
    :cond_e8
    move-object/from16 v24, v9

    move v9, v4

    move v4, v13

    move-object/from16 v13, v24

    aget v3, v21, v2

    add-int/lit8 v5, v2, -0x1

    aget v5, v21, v5

    aget v6, v21, v4

    invoke-static {v13, v3, v5, v6, v9}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->distribute([JIIII)V

    .line 1321
    :goto_f9
    move-object/from16 v17, v13

    move v13, v4

    move v4, v9

    move-object/from16 v9, v17

    move/from16 v17, v2

    goto :goto_c8

    .line 1342
    :cond_102
    move-object/from16 v24, v9

    move v9, v4

    move v4, v13

    move-object/from16 v13, v24

    aget v2, v21, v4

    invoke-static {v13, v2, v9, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    .line 1310
    :cond_10f
    move-object/from16 v24, v9

    move v9, v4

    move v4, v13

    move-object/from16 v13, v24

    .line 1311
    const/16 v6, 0x3c

    move v7, v6

    const/4 v15, 0x0

    goto :goto_120

    .line 1299
    :cond_11a
    move-object/from16 v24, v9

    move v9, v4

    move v4, v13

    move-object/from16 v13, v24

    .line 1317
    :goto_120
    invoke-static {v13, v11, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 1318
    move-object v6, v13

    move v13, v4

    move v4, v9

    move-object v9, v6

    const/4 v6, 0x0

    goto/16 :goto_a1

    .line 1297
    :cond_12a
    move-object/from16 v24, v9

    move v9, v4

    move v4, v13

    move-object/from16 v13, v24

    move-object v6, v13

    move v13, v4

    move v4, v9

    move-object v9, v6

    move/from16 v7, p1

    const/4 v6, 0x0

    goto/16 :goto_a2

    .line 1293
    :cond_139
    move-object/from16 v24, v9

    move v9, v4

    move v4, v13

    move-object/from16 v13, v24

    add-int/2addr v10, v5

    .line 1294
    ushr-long v6, v6, v16

    .line 1295
    move v13, v4

    move v4, v9

    move-object/from16 v9, v24

    goto/16 :goto_ac
.end method

.method public blacklist modMultiplyLD(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 24

    .line 869
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 870
    if-nez v2, :cond_b

    .line 872
    return-object p0

    .line 874
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 875
    if-nez v3, :cond_12

    .line 877
    return-object p1

    .line 883
    :cond_12
    nop

    .line 884
    if-le v2, v3, :cond_1d

    .line 886
    nop

    .line 887
    move v5, v2

    move v4, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_23

    .line 884
    :cond_1d
    move v4, v2

    move v5, v3

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    .line 893
    :goto_23
    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 894
    add-int/lit8 v7, v5, 0x3f

    ushr-int/lit8 v11, v7, 0x6

    .line 895
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v4, v4, 0x6

    .line 897
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4c

    .line 899
    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v8, v3, v7

    .line 900
    const-wide/16 v5, 0x1

    cmp-long v3, v8, v5

    if-nez v3, :cond_3f

    .line 902
    return-object v2

    .line 908
    :cond_3f
    new-array v12, v4, [J

    .line 909
    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 914
    invoke-static {v12, v7, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    .line 920
    :cond_4c
    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v13, v5, 0x6

    .line 925
    const/16 v5, 0x10

    new-array v9, v5, [I

    .line 930
    shl-int/lit8 v10, v13, 0x4

    new-array v14, v10, [J

    .line 931
    nop

    .line 932
    aput v13, v9, v8

    .line 933
    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v2, v7, v14, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    const/4 v2, 0x2

    move v11, v13

    :goto_64
    if-ge v2, v5, :cond_90

    .line 936
    add-int v15, v11, v13

    aput v15, v9, v2

    .line 937
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_7d

    .line 939
    move/from16 v18, v13

    ushr-int/lit8 v13, v15, 0x1

    const/16 v17, 0x1

    move-object v12, v14

    move/from16 v16, v18

    invoke-static/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v13, v16

    goto :goto_8b

    .line 943
    :cond_7d
    move/from16 v18, v13

    move-object v12, v14

    move/from16 v17, v15

    sub-int v15, v17, v18

    move-object/from16 v16, v12

    invoke-static/range {v12 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v15, v17

    .line 934
    :goto_8b
    add-int/lit8 v2, v2, 0x1

    move-object v14, v12

    move v11, v15

    goto :goto_64

    .line 950
    :cond_90
    move-object v12, v14

    new-array v2, v10, [J

    .line 951
    const/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v10

    invoke-static/range {v14 .. v19}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 954
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 955
    new-array v12, v4, [J

    .line 957
    nop

    .line 963
    const/16 v3, 0x38

    move v5, v3

    :goto_a7
    const/16 v10, 0x8

    if-ltz v5, :cond_df

    .line 965
    move v11, v8

    :goto_ac
    if-ge v11, v6, :cond_d1

    .line 967
    aget-wide v17, v2, v11

    move-object/from16 v19, v9

    ushr-long v8, v17, v5

    long-to-int v8, v8

    .line 968
    and-int/lit8 v9, v8, 0xf

    .line 969
    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    .line 970
    move/from16 v18, v13

    add-int/lit8 v13, v11, -0x1

    aget v15, v19, v9

    aget v17, v19, v8

    invoke-static/range {v12 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 965
    move-object v8, v12

    move-object v12, v14

    add-int/lit8 v11, v11, 0x2

    move/from16 v13, v18

    move-object/from16 v9, v19

    move-object v12, v8

    const/4 v8, 0x1

    goto :goto_ac

    .line 972
    :cond_d1
    move-object/from16 v19, v9

    move-object v8, v12

    move/from16 v18, v13

    move-object v12, v14

    invoke-static {v8, v7, v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 963
    add-int/lit8 v5, v5, -0x8

    move-object v12, v8

    const/4 v8, 0x1

    goto :goto_a7

    .line 975
    :cond_df
    move-object/from16 v19, v9

    move-object v8, v12

    move/from16 v18, v13

    move-object v12, v14

    :goto_e5
    if-ltz v3, :cond_109

    .line 977
    move v13, v7

    :goto_e8
    if-ge v13, v6, :cond_101

    .line 979
    aget-wide v14, v2, v13

    ushr-long/2addr v14, v3

    long-to-int v5, v14

    .line 980
    and-int/lit8 v9, v5, 0xf

    .line 981
    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 982
    aget v15, v19, v9

    aget v17, v19, v5

    move-object v14, v12

    move-object v12, v8

    invoke-static/range {v12 .. v18}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 977
    move-object v12, v14

    add-int/lit8 v13, v13, 0x2

    goto :goto_e8

    .line 984
    :cond_101
    if-lez v3, :cond_106

    .line 986
    invoke-static {v8, v7, v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 975
    :cond_106
    add-int/lit8 v3, v3, -0x8

    goto :goto_e5

    .line 993
    :cond_109
    invoke-static {v8, v7, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist modReduce(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 6

    .line 1347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    .line 1348
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    .line 1349
    new-instance p2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p2, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p2
.end method

.method public blacklist modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 12

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1668
    if-nez v0, :cond_7

    .line 1670
    return-object p0

    .line 1673
    :cond_7
    shl-int/lit8 v0, v0, 0x1

    .line 1674
    new-array v1, v0, [J

    .line 1676
    const/4 v2, 0x0

    move v3, v2

    .line 1677
    :goto_d
    if-ge v3, v0, :cond_2b

    .line 1679
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    .line 1680
    add-int/lit8 v6, v3, 0x1

    long-to-int v7, v4

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v1, v3

    .line 1681
    add-int/lit8 v3, v6, 0x1

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, v1, v6

    .line 1682
    goto :goto_d

    .line 1684
    :cond_2b
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    invoke-direct {v3, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v3
.end method

.method public blacklist modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 9

    .line 1689
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1690
    if-nez v0, :cond_7

    .line 1692
    return-object p0

    .line 1695
    :cond_7
    add-int/lit8 v1, p2, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    .line 1696
    shl-int/lit8 v1, v1, 0x1

    new-array v2, v1, [J

    .line 1697
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    :goto_15
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_21

    .line 1701
    invoke-static {v2, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    .line 1702
    invoke-static {v2, v4, v1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_15

    .line 1705
    :cond_21
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p1, v2, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p1
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 26

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    .line 1358
    if-nez v0, :cond_7

    .line 1360
    return-object p0

    .line 1362
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    .line 1363
    if-nez v1, :cond_e

    .line 1365
    return-object p1

    .line 1371
    :cond_e
    nop

    .line 1372
    if-le v0, v1, :cond_19

    .line 1374
    nop

    .line 1375
    move v3, v0

    move v2, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1f

    .line 1372
    :cond_19
    move v2, v0

    move v3, v1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1381
    :goto_1f
    add-int/lit8 v4, v2, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    .line 1382
    add-int/lit8 v5, v3, 0x3f

    ushr-int/lit8 v9, v5, 0x6

    .line 1383
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3e

    ushr-int/lit8 v14, v2, 0x6

    .line 1385
    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_49

    .line 1387
    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v1, v2

    .line 1388
    const-wide/16 v3, 0x1

    cmp-long v1, v6, v3

    if-nez v1, :cond_3b

    .line 1390
    return-object v0

    .line 1396
    :cond_3b
    new-array v10, v14, [J

    .line 1397
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1403
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, v10, v2, v14}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0

    .line 1409
    :cond_49
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v3, v3, 0x6

    .line 1414
    const/16 v6, 0x10

    new-array v7, v6, [I

    .line 1419
    shl-int/lit8 v8, v3, 0x4

    new-array v15, v8, [J

    .line 1420
    nop

    .line 1421
    aput v3, v7, v5

    .line 1422
    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v2, v15, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1423
    const/4 v0, 0x2

    move v5, v3

    :goto_61
    if-ge v0, v6, :cond_91

    .line 1425
    add-int v18, v5, v3

    aput v18, v7, v0

    .line 1426
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_79

    .line 1428
    ushr-int/lit8 v16, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v17, v15

    move/from16 v19, v3

    invoke-static/range {v15 .. v20}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v21, v19

    goto :goto_8a

    .line 1432
    :cond_79
    move/from16 v16, v3

    move/from16 v20, v18

    sub-int v18, v20, v16

    move-object/from16 v17, v15

    move-object/from16 v19, v15

    move/from16 v21, v16

    invoke-static/range {v15 .. v21}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v18, v20

    .line 1423
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v18

    move/from16 v3, v21

    goto :goto_61

    .line 1439
    :cond_91
    move/from16 v21, v3

    new-array v0, v8, [J

    .line 1440
    const/16 v18, 0x0

    const/16 v20, 0x4

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v19, v8

    invoke-static/range {v15 .. v20}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1443
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1444
    shl-int/lit8 v1, v14, 0x3

    new-array v10, v1, [J

    .line 1446
    nop

    .line 1452
    move v3, v2

    :goto_aa
    if-ge v3, v4, :cond_df

    .line 1454
    aget-wide v5, v0, v3

    .line 1455
    move/from16 v16, v3

    .line 1458
    :goto_b0
    long-to-int v8, v5

    and-int/lit8 v8, v8, 0xf

    .line 1459
    const/4 v9, 0x4

    ushr-long/2addr v5, v9

    .line 1460
    long-to-int v11, v5

    and-int/lit8 v11, v11, 0xf

    .line 1461
    aget v18, v7, v8

    aget v20, v7, v11

    move-object/from16 v19, v17

    move-object/from16 v17, v15

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1462
    move/from16 v8, v16

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move/from16 v16, v21

    ushr-long/2addr v5, v9

    .line 1463
    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-nez v9, :cond_d9

    .line 1465
    nop

    .line 1452
    add-int/lit8 v3, v3, 0x1

    move/from16 v21, v16

    goto :goto_aa

    .line 1467
    :cond_d9
    add-int/2addr v8, v14

    .line 1468
    move/from16 v21, v16

    move/from16 v16, v8

    goto :goto_b0

    .line 1472
    :cond_df
    nop

    .line 1473
    :goto_e0
    sub-int v13, v1, v14

    if-eqz v13, :cond_ee

    .line 1475
    sub-int v11, v13, v14

    const/16 v15, 0x8

    move-object v12, v10

    invoke-static/range {v10 .. v15}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move v1, v13

    goto :goto_e0

    .line 1483
    :cond_ee
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, v10, v2, v14}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public blacklist reduce(I[I)V
    .registers 6

    .line 1488
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1489
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    .line 1490
    array-length p2, v0

    if-ge p1, p2, :cond_14

    .line 1492
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1493
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1495
    :cond_14
    return-void
.end method

.method public blacklist square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .registers 10

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result p1

    .line 1711
    if-nez p1, :cond_7

    .line 1713
    return-object p0

    .line 1716
    :cond_7
    shl-int/lit8 p1, p1, 0x1

    .line 1717
    new-array p2, p1, [J

    .line 1719
    const/4 v0, 0x0

    move v1, v0

    .line 1720
    :goto_d
    if-ge v1, p1, :cond_2b

    .line 1722
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v3, v1, 0x1

    aget-wide v2, v2, v3

    .line 1723
    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v5

    aput-wide v5, p2, v1

    .line 1724
    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    aput-wide v2, p2, v4

    .line 1725
    goto :goto_d

    .line 1727
    :cond_2b
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 7

    .line 800
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 15

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 544
    if-nez v0, :cond_9

    .line 546
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 549
    :cond_9
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v1, v2

    .line 550
    const/16 v1, 0x8

    new-array v5, v1, [B

    .line 551
    nop

    .line 552
    nop

    .line 553
    const/4 v6, 0x7

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    move v10, v9

    :goto_1a
    const/4 v11, 0x1

    if-ltz v8, :cond_31

    .line 555
    mul-int/lit8 v12, v8, 0x8

    ushr-long v12, v3, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    .line 556
    if-nez v10, :cond_27

    if-eqz v12, :cond_2e

    .line 558
    :cond_27
    nop

    .line 559
    add-int/lit8 v10, v9, 0x1

    aput-byte v12, v5, v9

    move v9, v10

    move v10, v11

    .line 553
    :cond_2e
    add-int/lit8 v8, v8, -0x1

    goto :goto_1a

    .line 563
    :cond_31
    mul-int/2addr v2, v1

    add-int/2addr v2, v9

    .line 564
    new-array v1, v2, [B

    .line 565
    nop

    :goto_36
    if-ge v7, v9, :cond_3f

    .line 567
    aget-byte v2, v5, v7

    aput-byte v2, v1, v7

    .line 565
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 571
    :cond_3f
    add-int/lit8 v0, v0, -0x2

    :goto_41
    if-ltz v0, :cond_5b

    .line 573
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v2, v0

    .line 574
    move v4, v6

    :goto_48
    if-ltz v4, :cond_58

    .line 576
    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v7, v4, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    .line 574
    add-int/lit8 v4, v4, -0x1

    move v9, v5

    goto :goto_48

    .line 571
    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    .line 579
    :cond_5b
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2181
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2182
    if-nez v0, :cond_9

    .line 2184
    const-string v0, "0"

    return-object v0

    .line 2187
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2188
    :goto_18
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_39

    .line 2190
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2194
    const/16 v4, 0x40

    if-ge v3, v4, :cond_35

    .line 2196
    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2199
    :cond_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2200
    goto :goto_18

    .line 2201
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
