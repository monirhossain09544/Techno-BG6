.class abstract Landroid/service/notification/ZenModeDiff$BaseDiff;
.super Ljava/lang/Object;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseDiff"
.end annotation


# instance fields
.field private blacklist mExists:I

.field private blacklist mFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$FieldDiff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    .line 160
    if-nez p1, :cond_15

    .line 161
    if-eqz p2, :cond_1a

    .line 162
    const/4 p1, 0x1

    iput p1, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    goto :goto_1a

    .line 166
    :cond_15
    if-nez p2, :cond_1a

    .line 168
    const/4 p1, 0x2

    iput p1, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    .line 173
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method final blacklist addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V
    .registers 4

    .line 181
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public final blacklist fieldNamesWithDiff()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;
    .registers 4

    .line 216
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeDiff$FieldDiff;

    return-object p1
.end method

.method public abstract blacklist hasDiff()Z
.end method

.method public final blacklist hasExistenceChange()Z
    .registers 2

    .line 202
    iget v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final blacklist hasFieldDiffs()Z
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public final blacklist wasAdded()Z
    .registers 3

    .line 188
    iget v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public final blacklist wasRemoved()Z
    .registers 3

    .line 195
    iget v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
