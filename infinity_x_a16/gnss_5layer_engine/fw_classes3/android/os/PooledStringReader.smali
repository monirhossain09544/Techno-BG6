.class public Landroid/os/PooledStringReader;
.super Ljava/lang/Object;
.source "PooledStringReader.java"


# instance fields
.field private final greylist-max-o mIn:Landroid/os/Parcel;

.field private final greylist-max-o mPool:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public greylist-max-o getStringCount()I
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public greylist-max-o readString()Ljava/lang/String;
    .registers 4

    .line 44
    iget-object v0, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 45
    if-ltz v0, :cond_d

    .line 46
    iget-object v1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 48
    :cond_d
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 49
    iget-object v1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 51
    return-object v1
.end method
