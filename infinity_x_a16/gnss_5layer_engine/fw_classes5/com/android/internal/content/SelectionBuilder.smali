.class public Lcom/android/internal/content/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# instance fields
.field private blacklist mSelection:Ljava/lang/StringBuilder;

.field private blacklist mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public varargs blacklist append(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/content/SelectionBuilder;
    .registers 6

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    if-eqz p2, :cond_14

    array-length p1, p2

    if-gtz p1, :cond_c

    goto :goto_14

    .line 53
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Valid selection required when including arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_14
    :goto_14
    return-object p0

    .line 61
    :cond_15
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_24

    .line 62
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_24
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-eqz p2, :cond_49

    .line 67
    array-length p1, p2

    const/4 v0, 0x0

    :goto_39
    if-ge v0, p1, :cond_49

    aget-object v1, p2, v0

    .line 70
    iget-object v2, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 74
    :cond_49
    return-object p0
.end method

.method public blacklist delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 5

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist getSelection()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSelectionArgs()[Ljava/lang/String;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 100
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/content/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reset()Lcom/android/internal/content/SelectionBuilder;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    return-object p0
.end method

.method public blacklist update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 6

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
