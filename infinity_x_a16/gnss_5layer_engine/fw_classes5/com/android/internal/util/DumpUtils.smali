.class public final Lcom/android/internal/util/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/DumpUtils$Dump;,
        Lcom/android/internal/util/DumpUtils$KeyDumper;,
        Lcom/android/internal/util/DumpUtils$ValueDumper;
    }
.end annotation


# static fields
.field public static final blacklist CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static blacklist checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    .line 178
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static blacklist checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    .line 99
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_42

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: can\'t dump "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " due to missing android.permission.DUMP permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p2, p0}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 104
    const/4 p0, 0x0

    return p0

    .line 106
    :cond_42
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 14

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 123
    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_a4

    .line 132
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, ", uid="

    const-string v4, " from from pid="

    const-string v5, "Permission Denial: can\'t dump "

    const/4 v6, 0x0

    if-eqz v2, :cond_4b

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p2, p0}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 137
    return v6

    .line 128
    :sswitch_4a
    return v1

    .line 143
    :cond_4b
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 145
    if-eqz p0, :cond_71

    .line 146
    array-length v7, p0

    move v8, v6

    :goto_5f
    if-ge v8, v7, :cond_71

    aget-object v9, p0, v8

    .line 147
    const/16 v10, 0x2b

    invoke-virtual {v2, v10, v0, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v9

    sparse-switch v9, :sswitch_data_b6

    .line 146
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    .line 155
    :sswitch_6f
    return v1

    .line 151
    :sswitch_70
    return v1

    .line 160
    :cond_71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " due to android:get_usage_stats app-op not allowed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {p2, p0}, Lcom/android/internal/util/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 163
    return v6

    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_4a
        0x3e8 -> :sswitch_4a
        0x42b -> :sswitch_4a
        0x7d0 -> :sswitch_4a
    .end sparse-switch

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_70
        0x3 -> :sswitch_6f
    .end sparse-switch
.end method

.method public static blacklist dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8

    .line 66
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 67
    new-instance v1, Lcom/android/internal/util/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    .line 77
    :cond_18
    const-string p0, "... timed out"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :goto_1d
    return-void
.end method

.method public static blacklist dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 349
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 350
    return-void
.end method

.method public static blacklist dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/DumpUtils$KeyDumper;",
            "Lcom/android/internal/util/DumpUtils$ValueDumper<",
            "TT;>;)V"
        }
    .end annotation

    .line 367
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 368
    if-nez v0, :cond_17

    .line 369
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const-string p1, "No "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string p1, "s"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 377
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 378
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const-string p3, "(s):"

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    const/4 p3, 0x0

    :goto_3c
    if-ge p3, v0, :cond_76

    .line 383
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 384
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 385
    if-eqz p4, :cond_4c

    .line 386
    invoke-interface {p4, p3, v1}, Lcom/android/internal/util/DumpUtils$KeyDumper;->dump(II)V

    goto :goto_5f

    .line 388
    :cond_4c
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 390
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    const-string v1, "->"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    :goto_5f
    if-nez v2, :cond_67

    .line 395
    const-string v1, "(null)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_70

    .line 396
    :cond_67
    if-eqz p5, :cond_6d

    .line 397
    invoke-interface {p5, v2}, Lcom/android/internal/util/DumpUtils$ValueDumper;->dump(Ljava/lang/Object;)V

    goto :goto_70

    .line 399
    :cond_6d
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 401
    :goto_70
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 382
    add-int/lit8 p3, p3, 0x1

    goto :goto_3c

    .line 403
    :cond_76
    return-void
.end method

.method public static blacklist dumpSparseArrayValues(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 357
    new-instance v4, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 360
    return-void
.end method

.method public static blacklist filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRec::",
            "Landroid/content/ComponentName$WithComponentName;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "TTRec;>;"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 279
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda0;-><init>()V

    return-object p0

    .line 283
    :cond_c
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 284
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda1;-><init>()V

    return-object p0

    .line 288
    :cond_1a
    const-string v0, "all-platform"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 289
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda2;-><init>()V

    return-object p0

    .line 293
    :cond_28
    const-string v0, "all-non-platform"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 294
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda3;-><init>()V

    return-object p0

    .line 298
    :cond_36
    const-string v0, "all-platform-critical"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 299
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda4;-><init>()V

    return-object p0

    .line 303
    :cond_44
    const-string v0, "all-platform-non-critical"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 304
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda5;-><init>()V

    return-object p0

    .line 308
    :cond_52
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_5e

    .line 311
    new-instance p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;

    invoke-direct {p0, v0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;-><init>(Landroid/content/ComponentName;)V

    return-object p0

    .line 316
    :cond_5e
    const/16 v0, 0x10

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    .line 317
    new-instance v1, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static blacklist isCriticalPackage(Landroid/content/ComponentName;)Z
    .registers 4

    .line 236
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 237
    return v0

    .line 240
    :cond_4
    move v1, v0

    :goto_5
    sget-object v2, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 241
    sget-object v2, Lcom/android/internal/util/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 242
    const/4 p0, 0x1

    return p0

    .line 240
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 245
    :cond_19
    return v0
.end method

.method public static blacklist isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    .line 229
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static blacklist isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 1

    .line 221
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static blacklist isNonPlatformPackage(Ljava/lang/String;)Z
    .registers 1

    .line 213
    if-eqz p0, :cond_a

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static blacklist isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    .line 255
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 256
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 255
    :goto_19
    return p0
.end method

.method public static blacklist isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    .line 267
    if-eqz p0, :cond_18

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 268
    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 267
    :goto_19
    return p0
.end method

.method public static blacklist isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    .line 205
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static blacklist isPlatformPackage(Landroid/content/ComponentName;)Z
    .registers 1

    .line 197
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static blacklist isPlatformPackage(Ljava/lang/String;)Z
    .registers 2

    .line 186
    if-eqz p0, :cond_1c

    .line 187
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 188
    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 189
    const-string v0, "com.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 186
    :goto_1d
    return p0
.end method

.method static synthetic blacklist lambda$dumpSparseArrayValues$3(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 4

    .line 358
    const-string p2, "%s%s"

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 359
    return-void
.end method

.method static synthetic blacklist lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z
    .registers 1

    .line 279
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 2

    .line 311
    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static synthetic blacklist lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .registers 5

    .line 318
    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 319
    const/4 v1, -0x1

    if-eq p0, v1, :cond_d

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, p0, :cond_1f

    .line 320
    :cond_d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_1f
    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 319
    :goto_22
    return p0
.end method

.method private static blacklist logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    return-void
.end method
