.class Landroid/os/ZygoteProcess$ZygoteState;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ZygoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZygoteState"
.end annotation


# instance fields
.field private final blacklist mAbiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClosed:Z

.field final blacklist mUsapSocketAddress:Landroid/net/LocalSocketAddress;

.field final blacklist mZygoteInputStream:Ljava/io/DataInputStream;

.field final blacklist mZygoteOutputWriter:Ljava/io/BufferedWriter;

.field private final blacklist mZygoteSessionSocket:Landroid/net/LocalSocket;

.field final blacklist mZygoteSocketAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmZygoteSessionSocket(Landroid/os/ZygoteProcess$ZygoteState;)Landroid/net/LocalSocket;
    .registers 1

    iget-object p0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocketAddress;",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 168
    iput-object p2, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    .line 169
    iput-object p3, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    .line 170
    iput-object p4, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 171
    iput-object p5, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 172
    iput-object p6, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    .line 173
    return-void
.end method

.method static blacklist connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 193
    if-eqz p0, :cond_39

    .line 198
    :try_start_7
    invoke-virtual {v3, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 199
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 202
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x100

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_30

    .line 210
    nop

    .line 212
    new-instance v0, Landroid/os/ZygoteProcess$ZygoteState;

    .line 214
    invoke-static {v5, v4}, Landroid/os/ZygoteProcess;->-$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/os/ZygoteProcess$ZygoteState;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 212
    return-object v0

    .line 204
    :catch_30
    move-exception v0

    move-object p0, v0

    .line 206
    :try_start_32
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 207
    :goto_35
    goto :goto_38

    :catch_36
    move-exception v0

    goto :goto_35

    .line 209
    :goto_38
    throw p0

    .line 194
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "zygoteSocketAddress can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteSessionSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 233
    goto :goto_e

    .line 231
    :catch_6
    move-exception v0

    .line 232
    const-string v1, "ZygoteProcess"

    const-string v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :goto_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    .line 236
    return-void
.end method

.method blacklist getUsapSessionSocket()Landroid/net/LocalSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 219
    iget-object v1, p0, Landroid/os/ZygoteProcess$ZygoteState;->mUsapSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 221
    return-object v0
.end method

.method greylist-max-o isClosed()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return v0
.end method

.method greylist-max-o matches(Ljava/lang/String;)Z
    .registers 3

    .line 225
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mAbiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
