.class public final Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
.super Ljava/lang/Object;
.source "InputConnectionCommandHeader.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputConnectionCommandHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 66
    iget p2, p0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void
.end method
