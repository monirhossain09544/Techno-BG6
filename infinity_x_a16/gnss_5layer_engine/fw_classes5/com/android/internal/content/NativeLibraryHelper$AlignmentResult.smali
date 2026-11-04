.class public Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlignmentResult"
.end annotation


# instance fields
.field public final blacklist flags:I

.field public final blacklist unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;


# direct methods
.method public constructor blacklist <init>(I[Lcom/android/internal/content/LibraryAlignmentInfo;)V
    .registers 3

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput p1, p0, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->flags:I

    .line 632
    iput-object p2, p0, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    .line 633
    return-void
.end method
