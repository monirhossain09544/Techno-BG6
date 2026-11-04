.class Lcom/android/internal/os/AndroidPrintStream;
.super Lcom/android/internal/os/LoggingPrintStream;
.source "AndroidPrintStream.java"


# instance fields
.field private final blacklist priority:I

.field private final blacklist tag:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(ILjava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/android/internal/os/LoggingPrintStream;-><init>()V

    .line 41
    if-eqz p2, :cond_a

    .line 45
    iput p1, p0, Lcom/android/internal/os/AndroidPrintStream;->priority:I

    .line 46
    iput-object p2, p0, Lcom/android/internal/os/AndroidPrintStream;->tag:Ljava/lang/String;

    .line 47
    return-void

    .line 42
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 50
    iget v0, p0, Lcom/android/internal/os/AndroidPrintStream;->priority:I

    iget-object v1, p0, Lcom/android/internal/os/AndroidPrintStream;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
