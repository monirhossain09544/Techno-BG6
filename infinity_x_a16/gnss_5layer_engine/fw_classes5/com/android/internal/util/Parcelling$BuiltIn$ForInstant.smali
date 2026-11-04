.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;
.super Ljava/lang/Object;
.source "Parcelling.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Parcelling$BuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/time/Instant;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
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

    .line 319
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;->parcel(Ljava/time/Instant;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/time/Instant;Landroid/os/Parcel;I)V
    .registers 6

    .line 323
    if-nez p1, :cond_5

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    :goto_9
    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    if-nez p1, :cond_11

    const/high16 p1, -0x80000000

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result p1

    :goto_15
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;->unparcel(Landroid/os/Parcel;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 6

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 332
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 333
    const/4 p1, 0x0

    return-object p1

    .line 335
    :cond_10
    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
