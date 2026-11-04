.class public Lcom/android/internal/pm/parsing/PackageParser2;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/PackageParser2$Callback;
    }
.end annotation


# static fields
.field private static final blacklist LOG_PARSE_TIMINGS:Z

.field private static final blacklist LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# instance fields
.field protected blacklist mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

.field private final blacklist mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

.field private final blacklist mSharedAppInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSharedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/parsing/result/ParseTypeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$MvArpHu3e7x9OPqqzLNY7gz1y0k(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/pm/parsing/PackageParser2;->lambda$new$1(Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V
    .registers 7

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    .line 78
    if-nez p2, :cond_18

    .line 79
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    invoke-virtual {p2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 83
    :cond_18
    nop

    .line 85
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_2e

    .line 87
    const-class v1, Landroid/permission/PermissionManager;

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 89
    if-eqz v0, :cond_2e

    .line 90
    invoke-virtual {v0}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_2f

    .line 93
    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-nez v0, :cond_36

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :cond_36
    iput-object p3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    .line 99
    new-instance p3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    iput-object p3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    .line 102
    new-instance p1, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p4}, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 110
    new-instance p2, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-static {p2}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    .line 111
    return-void
.end method

.method static synthetic blacklist lambda$new$0()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 64
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 65
    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 66
    return-object v0
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .registers 7

    .line 103
    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 105
    iput-object p4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 106
    iput p5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 107
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method

.method static synthetic blacklist lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 2

    .line 110
    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-direct {v0, p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 186
    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 187
    return-void
.end method

.method public blacklist parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/pm/parsing/PackageParserException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 122
    aget-object p1, v0, v1

    .line 125
    :cond_16
    if-eqz p3, :cond_25

    iget-object p3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    if-eqz p3, :cond_25

    .line 126
    iget-object p3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    invoke-interface {p3, p1, p2}, Lcom/android/internal/pm/parsing/IPackageCacher;->getCachedResult(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p3

    .line 127
    if-eqz p3, :cond_25

    .line 128
    return-object p3

    .line 132
    :cond_25
    sget-boolean p3, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_31

    :cond_30
    move-wide v2, v0

    .line 133
    :goto_31
    iget-object p3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {p3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object p3

    .line 134
    iget-object v4, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    invoke-virtual {v4, p3, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 135
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_aa

    .line 140
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p3

    .line 142
    sget-boolean v4, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    if-eqz v4, :cond_5b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 143
    :cond_5b
    iget-object v4, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    if-eqz v4, :cond_64

    .line 144
    iget-object v4, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/pm/parsing/IPackageCacher;->cacheResult(Ljava/io/File;ILcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 146
    :cond_64
    sget-boolean p2, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    if-eqz p2, :cond_a9

    .line 147
    sub-long v2, v0, v2

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 149
    add-long v0, v2, v4

    const-wide/16 v6, 0x64

    cmp-long p2, v0, v6

    if-lez p2, :cond_a9

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse times for \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\': parse="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms, update_cache="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageParsing"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_a9
    return-object p3

    .line 136
    :cond_aa
    new-instance p1, Lcom/android/internal/pm/parsing/PackageParserException;

    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p2

    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-direct {p1, p2, v0, p3}, Lcom/android/internal/pm/parsing/PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/pm/parsing/PackageParserException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackageFromPackageLite(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/PackageLite;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-nez p2, :cond_23

    .line 172
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    return-object p1

    .line 169
    :cond_23
    new-instance p2, Lcom/android/internal/pm/parsing/PackageParserException;

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/android/internal/pm/parsing/PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
