.class public Landroid/os/strictmode/InstanceCountViolation;
.super Landroid/os/strictmode/Violation;
.source "InstanceCountViolation.java"


# static fields
.field private static final greylist-max-o FAKE_STACK:[Ljava/lang/StackTraceElement;


# instance fields
.field private final greylist-max-o mInstances:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 21
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    new-instance v2, Ljava/lang/StackTraceElement;

    const-string/jumbo v3, "setClassInstanceLimit"

    const-string v4, "StrictMode.java"

    const-string v5, "android.os.StrictMode"

    invoke-direct {v2, v5, v3, v4, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sput-object v1, Landroid/os/strictmode/InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Class;JI)V
    .registers 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; instances="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; limit="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object p1, Landroid/os/strictmode/InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Landroid/os/strictmode/InstanceCountViolation;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 30
    iput-wide p2, p0, Landroid/os/strictmode/InstanceCountViolation;->mInstances:J

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist getNumberOfInstances()J
    .registers 3

    .line 34
    iget-wide v0, p0, Landroid/os/strictmode/InstanceCountViolation;->mInstances:J

    return-wide v0
.end method
