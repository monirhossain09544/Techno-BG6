.class public Lcom/android/internal/os/CpuScalingPolicyReader;
.super Ljava/lang/Object;
.source "CpuScalingPolicyReader.java"


# static fields
.field private static final blacklist CPUFREQ_DIR:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq"

.field private static final blacklist FILE_NAME_CPUINFO_CUR_FREQ:Ljava/lang/String; = "cpuinfo_cur_freq"

.field private static final blacklist FILE_NAME_RELATED_CPUS:Ljava/lang/String; = "related_cpus"

.field private static final blacklist FILE_NAME_SCALING_AVAILABLE_FREQUENCIES:Ljava/lang/String; = "scaling_available_frequencies"

.field private static final blacklist FILE_NAME_SCALING_BOOST_FREQUENCIES:Ljava/lang/String; = "scaling_boost_frequencies"

.field private static final blacklist POLICY_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "CpuScalingPolicyReader"


# instance fields
.field private final blacklist mCpuFreqDir:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-string v0, "policy(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/CpuScalingPolicyReader;->POLICY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    const-string v0, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {p0, v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/os/CpuScalingPolicyReader;->mCpuFreqDir:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static blacklist readIntsFromFile(Ljava/io/File;)[I
    .registers 10

    .line 122
    const-string v0, "CpuScalingPolicyReader"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 123
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0

    .line 126
    :cond_b
    new-instance v1, Landroid/util/IntArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 128
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_14
    invoke-static {p0, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 131
    array-length v5, v4

    :goto_26
    if-ge v3, v5, :cond_5d

    aget-object v6, v4, v3

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->isBlank()Z

    move-result v7
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_62

    if-eqz v7, :cond_31

    .line 133
    goto :goto_5a

    .line 136
    :cond_31
    :try_start_31
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_62

    .line 140
    goto :goto_5a

    .line 137
    :catch_39
    move-exception v6

    .line 138
    :try_start_3a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected file format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 142
    :cond_5d
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_61} :catch_62

    return-object p0

    .line 143
    :catch_62
    move-exception v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0
.end method


# virtual methods
.method public blacklist read()Lcom/android/internal/os/CpuScalingPolicies;
    .registers 14

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 71
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 73
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/os/CpuScalingPolicyReader;->mCpuFreqDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 75
    const/4 v3, 0x0

    if-eqz v2, :cond_8b

    .line 76
    array-length v4, v2

    move v5, v3

    :goto_1a
    if-ge v5, v4, :cond_8b

    aget-object v6, v2, v5

    .line 77
    sget-object v7, Lcom/android/internal/os/CpuScalingPolicyReader;->POLICY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 79
    new-instance v8, Ljava/io/File;

    const-string v9, "related_cpus"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v8

    .line 81
    array-length v9, v8

    if-nez v9, :cond_3d

    .line 82
    goto :goto_88

    .line 85
    :cond_3d
    new-instance v9, Ljava/io/File;

    const-string v10, "scaling_available_frequencies"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v9

    .line 87
    new-instance v10, Ljava/io/File;

    const-string v11, "scaling_boost_frequencies"

    invoke-direct {v10, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v10

    .line 90
    array-length v11, v10

    if-nez v11, :cond_57

    .line 91
    goto :goto_64

    .line 93
    :cond_57
    array-length v11, v9

    array-length v12, v10

    add-int/2addr v11, v12

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 95
    array-length v9, v9

    array-length v12, v10

    invoke-static {v10, v3, v11, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v11

    .line 98
    :goto_64
    array-length v10, v9

    const/4 v11, 0x1

    if-nez v10, :cond_7a

    .line 99
    new-instance v9, Ljava/io/File;

    const-string v10, "cpuinfo_cur_freq"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/internal/os/CpuScalingPolicyReader;->readIntsFromFile(Ljava/io/File;)[I

    move-result-object v9

    .line 100
    array-length v6, v9

    if-nez v6, :cond_7a

    .line 101
    new-array v9, v11, [I

    aput v3, v9, v3

    .line 104
    :cond_7a
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 105
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {v1, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    :cond_88
    :goto_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 111
    :cond_8b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_9f

    .line 113
    filled-new-array {v3}, [I

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    filled-new-array {v3}, [I

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    :cond_9f
    new-instance v2, Lcom/android/internal/os/CpuScalingPolicies;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/os/CpuScalingPolicies;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v2
.end method
