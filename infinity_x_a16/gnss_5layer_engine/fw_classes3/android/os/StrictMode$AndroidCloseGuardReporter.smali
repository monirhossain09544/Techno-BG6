.class Landroid/os/StrictMode$AndroidCloseGuardReporter;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCloseGuardReporter"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api report(Ljava/lang/String;)V
    .registers 3

    .line 2093
    new-instance v0, Landroid/os/strictmode/LeakedClosableViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/LeakedClosableViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2094
    return-void
.end method

.method public greylist-max-o test-api report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2088
    new-instance v0, Landroid/os/strictmode/LeakedClosableViolation;

    invoke-direct {v0, p1, p2}, Landroid/os/strictmode/LeakedClosableViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2089
    return-void
.end method
