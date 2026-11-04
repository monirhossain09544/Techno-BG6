.class Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;
.super Ljava/lang/Object;
.source "TraceBuffer.java"

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/TraceBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtoOutputStreamProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/TraceBuffer-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBytes(Landroid/util/proto/ProtoOutputStream;)[B
    .registers 2

    .line 90
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getBytes(Ljava/lang/Object;)[B
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getBytes(Landroid/util/proto/ProtoOutputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getItemSize(Landroid/util/proto/ProtoOutputStream;)I
    .registers 2

    .line 85
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist getItemSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getItemSize(Landroid/util/proto/ProtoOutputStream;)I

    move-result p1

    return p1
.end method

.method public blacklist write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Ljava/util/Queue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/proto/ProtoOutputStream;

    .line 98
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p2

    .line 99
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 100
    goto :goto_b

    .line 101
    :cond_1f
    return-void
.end method

.method public bridge synthetic blacklist write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V

    return-void
.end method
