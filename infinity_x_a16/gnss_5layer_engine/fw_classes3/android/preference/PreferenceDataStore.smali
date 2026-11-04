.class public interface abstract Landroid/preference/PreferenceDataStore;
.super Ljava/lang/Object;
.source "PreferenceDataStore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 195
    return p2
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .registers 3

    .line 184
    return p2
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 3

    .line 162
    return p2
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 4

    .line 173
    return-wide p2
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 139
    return-object p2
.end method

.method public whitelist getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    return-object p2
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)V
    .registers 3

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist putFloat(Ljava/lang/String;F)V
    .registers 3

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist putInt(Ljava/lang/String;I)V
    .registers 3

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist putLong(Ljava/lang/String;J)V
    .registers 4

    .line 101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
