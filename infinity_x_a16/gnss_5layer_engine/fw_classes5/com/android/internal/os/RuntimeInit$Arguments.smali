.class Lcom/android/internal/os/RuntimeInit$Arguments;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field blacklist startArgs:[Ljava/lang/String;

.field blacklist startClass:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private blacklist parseArgs([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x0

    move v1, v0

    .line 532
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    .line 533
    aget-object v2, p1, v1

    .line 535
    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 536
    add-int/lit8 v1, v1, 0x1

    .line 537
    goto :goto_1c

    .line 538
    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 539
    goto :goto_1c

    .line 532
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 543
    :cond_1c
    :goto_1c
    array-length v2, p1

    if-eq v1, v2, :cond_34

    .line 547
    add-int/lit8 v2, v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    .line 548
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    .line 549
    iget-object v1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    return-void

    .line 544
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing classname argument to RuntimeInit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
