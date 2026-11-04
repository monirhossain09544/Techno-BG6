.class public Landroid/os/IHintManager$SessionCreationReturn;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionCreationReturn"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IHintManager$SessionCreationReturn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist pipelineThreadLimitExceeded:Z

.field public blacklist session:Landroid/os/IHintSession;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 608
    new-instance v0, Landroid/os/IHintManager$SessionCreationReturn$1;

    invoke-direct {v0}, Landroid/os/IHintManager$SessionCreationReturn$1;-><init>()V

    sput-object v0, Landroid/os/IHintManager$SessionCreationReturn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/IHintManager$SessionCreationReturn;->pipelineThreadLimitExceeded:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 650
    nop

    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 636
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5b

    .line 637
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 642
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 645
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 637
    return-void

    .line 643
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 638
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IHintManager$SessionCreationReturn;->session:Landroid/os/IHintSession;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 642
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 645
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 639
    return-void

    .line 643
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/IHintManager$SessionCreationReturn;->pipelineThreadLimitExceeded:Z
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_59

    .line 642
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_53

    .line 645
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 646
    nop

    .line 647
    return-void

    .line 643
    :cond_53
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 642
    :catchall_59
    move-exception v2

    goto :goto_63

    .line 636
    :cond_5b
    :try_start_5b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_59

    .line 642
    :goto_63
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6c

    .line 643
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_6c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 646
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-object v0, p0, Landroid/os/IHintManager$SessionCreationReturn;->session:Landroid/os/IHintSession;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 625
    iget-boolean v0, p0, Landroid/os/IHintManager$SessionCreationReturn;->pipelineThreadLimitExceeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 627
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 628
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 630
    return-void
.end method
