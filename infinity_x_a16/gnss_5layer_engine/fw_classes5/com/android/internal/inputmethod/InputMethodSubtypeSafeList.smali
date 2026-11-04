.class public final Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
.super Lcom/android/internal/inputmethod/AbstractSafeList;
.source "InputMethodSubtypeSafeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/inputmethod/AbstractSafeList<",
        "Landroid/view/inputmethod/InputMethodSubtype;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/AbstractSafeList;-><init>(Ljava/util/List;)V

    .line 39
    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/AbstractSafeList;-><init>([B)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>([BLcom/android/internal/inputmethod/InputMethodSubtypeSafeList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;-><init>([B)V

    return-void
.end method

.method public static blacklist create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static blacklist extractFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/AbstractSafeList;->extractFrom(Lcom/android/internal/inputmethod/AbstractSafeList;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
