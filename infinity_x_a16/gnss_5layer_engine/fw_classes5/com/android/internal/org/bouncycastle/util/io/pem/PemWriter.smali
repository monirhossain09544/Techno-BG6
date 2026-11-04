.class public Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# static fields
.field private static final blacklist LINE_LENGTH:I = 0x40


# instance fields
.field private blacklist buf:[C

.field private final blacklist nlLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 22
    const/16 p1, 0x40

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    .line 33
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    .line 34
    if-eqz p1, :cond_16

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_19

    .line 40
    :cond_16
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    .line 42
    :goto_19
    return-void
.end method

.method private blacklist writeEncoded([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 107
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_2c

    .line 109
    move v2, v0

    .line 111
    :goto_a
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v3, v3

    if-eq v2, v3, :cond_1f

    .line 113
    add-int v3, v1, v2

    array-length v4, p1

    if-lt v3, v4, :cond_15

    .line 115
    goto :goto_1f

    .line 117
    :cond_15
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v4, v2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 120
    :cond_1f
    :goto_1f
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 107
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_6

    .line 123
    :cond_2c
    return-void
.end method

.method private blacklist writePostEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 139
    return-void
.end method

.method private blacklist writePreEncapsulationBoundary(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 131
    return-void
.end method


# virtual methods
.method public blacklist getOutputSize(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;)I
    .registers 7

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x4

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    .line 62
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ": "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 63
    goto :goto_25

    .line 65
    :cond_4e
    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v0, v1

    .line 69
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    .line 71
    add-int/lit8 v1, p1, 0x40

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x40

    iget v2, p0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    mul-int/2addr v1, v2

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 73
    return v0
.end method

.method public blacklist writeObject(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;

    .line 89
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 90
    const-string v2, ": "

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 93
    goto :goto_1d

    .line 95
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    .line 98
    :cond_43
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    .line 100
    return-void
.end method
