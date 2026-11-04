.class public Lcom/android/internal/util/ScreenshotRequest;
.super Ljava/lang/Object;
.source "ScreenshotRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;,
        Lcom/android/internal/util/ScreenshotRequest$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/util/ScreenshotRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotRequest"


# instance fields
.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mBoundsInScreen:Landroid/graphics/Rect;

.field private final blacklist mDisplayId:I

.field private final blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mSource:I

.field private final blacklist mTaskId:I

.field private final blacklist mTopComponent:Landroid/content/ComponentName;

.field private final blacklist mType:I

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Lcom/android/internal/util/ScreenshotRequest$1;

    invoke-direct {v0}, Lcom/android/internal/util/ScreenshotRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .registers 10

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    .line 65
    iput p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    .line 66
    iput-object p3, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    .line 67
    iput p4, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    .line 68
    iput p5, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    .line 69
    iput-object p6, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    iput-object p7, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 71
    iput-object p8, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    .line 72
    iput p9, p0, Lcom/android/internal/util/ScreenshotRequest;->mDisplayId:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;ILcom/android/internal/util/ScreenshotRequest-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/util/ScreenshotRequest;-><init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    .line 78
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    .line 81
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;->-$$Nest$smbundleToHardwareBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 82
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 83
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest;->mDisplayId:I

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBoundsInScreen()Landroid/graphics/Rect;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mDisplayId:I

    return v0
.end method

.method public blacklist getInsets()Landroid/graphics/Insets;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getSource()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    return v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    return v0
.end method

.method public blacklist getTopComponent()Landroid/content/ComponentName;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 132
    iget p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    iget p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/android/internal/util/ScreenshotRequest$HardwareBitmapBundler;->-$$Nest$smhardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    iget-object p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    iget-object p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    iget p2, p0, Lcom/android/internal/util/ScreenshotRequest;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void
.end method
