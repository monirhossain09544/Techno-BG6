.class public Lcom/android/internal/inputmethod/SubtypeLocaleUtils;
.super Ljava/lang/Object;
.source "SubtypeLocaleUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 7

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 49
    return-object v1

    .line 52
    :cond_8
    const-string v0, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 53
    array-length v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v3, :cond_22

    const-string v0, "tl"

    aget-object v5, p0, v4

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 59
    const-string v0, "fil"

    aput-object v0, p0, v4

    .line 63
    :cond_22
    array-length v0, p0

    if-ne v0, v3, :cond_2d

    .line 64
    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v4

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 65
    :cond_2d
    array-length v0, p0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3b

    .line 66
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v4

    aget-object p0, p0, v3

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 67
    :cond_3b
    array-length v0, p0

    if-ne v0, v2, :cond_4a

    .line 68
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v4

    aget-object v2, p0, v3

    aget-object p0, p0, v5

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_4a
    return-object v1
.end method
