.class public Lcom/android/internal/net/ConnectivityBlobStore;
.super Ljava/lang/Object;
.source "ConnectivityBlobStore.java"


# static fields
.field private static final blacklist CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS blob_table (owner INTEGER,name BLOB,blob BLOB,UNIQUE(owner, name));"

.field private static final blacklist ROOT_DIR:Ljava/lang/String; = "/data/misc/connectivityblobdb/"

.field private static final blacklist TABLENAME:Ljava/lang/String; = "blob_table"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/internal/net/ConnectivityBlobStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    .line 64
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 65
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    iget-object p1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "CREATE TABLE IF NOT EXISTS blob_table (owner INTEGER,name BLOB,blob BLOB,UNIQUE(owner, name));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/misc/connectivityblobdb/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ConnectivityBlobStore;-><init>(Ljava/io/File;)V

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)[B
    .registers 11

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/net/ConnectivityBlobStore;->getCallingUidMockable()I

    move-result v0

    .line 113
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "blob_table"

    const-string v3, "blob"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "owner=? AND name=?"

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v5

    .line 113
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_1f} :catch_43

    .line 120
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 121
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_36

    .line 123
    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_2f
    return-object v0

    .line 123
    :cond_30
    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_35} :catch_43

    .line 125
    :cond_35
    goto :goto_66

    .line 113
    :catchall_36
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_42

    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v2
    :try_end_43
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_43} :catch_43

    .line 123
    :catch_43
    move-exception v0

    .line 124
    sget-object v1, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_66
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist getCallingUidMockable()I
    .registers 2

    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public blacklist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/net/ConnectivityBlobStore;->getCallingUidMockable()I

    move-result v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    :try_start_9
    iget-object v2, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "blob_table"

    const-string v4, "name"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner=? AND name LIKE ? ESCAPE \'\\\'"

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-static {p1}, Landroid/database/DatabaseUtils;->escapeForLike(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, "name ASC"

    .line 183
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3c
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_3c} :catch_6b

    .line 193
    :try_start_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 195
    :cond_42
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_5e

    if-nez v0, :cond_42

    .line 199
    :cond_58
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Landroid/database/SQLException; {:try_start_5a .. :try_end_5d} :catch_6b

    .line 201
    :cond_5d
    goto :goto_8e

    .line 183
    :catchall_5e
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_6a

    :try_start_62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v0

    :try_start_67
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v3
    :try_end_6b
    .catch Landroid/database/SQLException; {:try_start_67 .. :try_end_6b} :catch_6b

    .line 199
    :catch_6b
    move-exception v0

    .line 200
    sget-object v2, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in listing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_8e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public blacklist put(Ljava/lang/String;[B)Z
    .registers 6

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/net/ConnectivityBlobStore;->getCallingUidMockable()I

    move-result v0

    .line 90
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 91
    const-string v2, "owner"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string p1, "blob"

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 98
    iget-object p1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "blob_table"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 99
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    return p1
.end method

.method public blacklist remove(Ljava/lang/String;)Z
    .registers 7

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/net/ConnectivityBlobStore;->getCallingUidMockable()I

    move-result v0

    .line 140
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "blob_table"

    const-string v4, "owner=? AND name=?"

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_17} :catch_1b

    .line 143
    if-lez p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 144
    :catch_1b
    move-exception v0

    .line 145
    sget-object v2, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1
.end method

.method public blacklist removeAll()Z
    .registers 6

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/net/ConnectivityBlobStore;->getCallingUidMockable()I

    move-result v0

    .line 159
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/net/ConnectivityBlobStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "blob_table"

    const-string v3, "owner=?"

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 161
    sget-object v2, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows during the removeAll operation for uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_38} :catch_3a

    .line 163
    const/4 v0, 0x1

    return v0

    .line 164
    :catch_3a
    move-exception v0

    .line 165
    sget-object v1, Lcom/android/internal/net/ConnectivityBlobStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while removing all blobs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    return v0
.end method
