.class public final Landroid/service/quickaccesswallet/GetWalletCardsRequest;
.super Ljava/lang/Object;
.source "GetWalletCardsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardHeightPx:I

.field private final blacklist mCardWidthPx:I

.field private final blacklist mIconSizePx:I

.field private final blacklist mMaxCards:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    .line 56
    iput p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    .line 57
    iput p3, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    .line 58
    iput p4, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCardHeightPx()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    return v0
.end method

.method public whitelist getCardWidthPx()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    return v0
.end method

.method public whitelist getIconSizePx()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    return v0
.end method

.method public whitelist getMaxCards()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 74
    iget p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
