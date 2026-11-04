.class public final Landroid/service/carrier/MessagePdu;
.super Ljava/lang/Object;
.source "MessagePdu.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/carrier/MessagePdu;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NULL_LENGTH:I = -0x1


# instance fields
.field private final greylist-max-o mPduList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/service/carrier/MessagePdu$1;

    invoke-direct {v0}, Landroid/service/carrier/MessagePdu$1;-><init>()V

    sput-object v0, Landroid/service/carrier/MessagePdu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_f

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 43
    iput-object p1, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    .line 44
    return-void

    .line 41
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "pduList must not be null or contain nulls"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPdus()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 62
    iget-object p2, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    if-nez p2, :cond_9

    .line 63
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 65
    :cond_9
    iget-object p2, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Landroid/service/carrier/MessagePdu;->mPduList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 68
    goto :goto_18

    .line 70
    :cond_28
    :goto_28
    return-void
.end method
