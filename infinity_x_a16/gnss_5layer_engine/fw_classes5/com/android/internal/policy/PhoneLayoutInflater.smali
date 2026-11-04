.class public Lcom/android/internal/policy/PhoneLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "PhoneLayoutInflater.java"


# static fields
.field private static final blacklist sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    const-string v0, "android.webkit."

    const-string v1, "android.app."

    const-string v2, "android.widget."

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3

    .line 72
    new-instance v0, Lcom/android/internal/policy/PhoneLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method protected whitelist onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/internal/policy/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 58
    :try_start_8
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/internal/policy/PhoneLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_c} :catch_10

    .line 59
    if-eqz v3, :cond_f

    .line 60
    return-object v3

    .line 65
    :cond_f
    goto :goto_11

    .line 62
    :catch_10
    move-exception v3

    .line 56
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 68
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
