.class Lcom/android/internal/util/PastyUtils$1;
.super Ljava/lang/Object;
.source "PastyUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/PastyUtils;->upload(Ljava/lang/String;Lcom/android/internal/util/PastyUtils$UploadResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Lcom/android/internal/util/PastyUtils$UploadResultCallback;

.field final synthetic blacklist val$content:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/util/PastyUtils$UploadResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/android/internal/util/PastyUtils$1;->val$content:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/util/PastyUtils$1;->val$callback:Lcom/android/internal/util/PastyUtils$UploadResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 52
    const-string v0, "UTF-8"

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/android/internal/util/PastyUtils;->-$$Nest$sfgetAPI_URL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_a3

    .line 54
    :try_start_11
    const-string v2, "Content-Type"

    const-string v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "Accept-Charset"

    invoke-virtual {v1, v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 58
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_9e

    .line 59
    :try_start_25
    iget-object v3, p0, Lcom/android/internal/util/PastyUtils$1;->val$content:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_92

    .line 60
    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 61
    :cond_33
    const-string v2, ""

    .line 62
    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 63
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_9e

    .line 64
    :try_start_43
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 65
    :goto_46
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 66
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v4, "key"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 68
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 69
    goto :goto_61

    .line 71
    :cond_5d
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    .line 73
    goto :goto_46

    .line 74
    :cond_61
    :goto_61
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V
    :try_end_64
    .catchall {:try_start_43 .. :try_end_64} :catchall_88

    .line 75
    :try_start_64
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 77
    iget-object v0, p0, Lcom/android/internal/util/PastyUtils$1;->val$callback:Lcom/android/internal/util/PastyUtils$UploadResultCallback;

    invoke-static {v2}, Lcom/android/internal/util/PastyUtils;->-$$Nest$smgetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/util/PastyUtils$UploadResultCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_83

    .line 79
    :cond_77
    const-string v0, "Failed to upload to Pasty: No key retrieved"

    .line 80
    iget-object v2, p0, Lcom/android/internal/util/PastyUtils$1;->val$callback:Lcom/android/internal/util/PastyUtils$UploadResultCallback;

    new-instance v3, Lcom/android/internal/util/PastyException;

    invoke-direct {v3, v0}, Lcom/android/internal/util/PastyException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Lcom/android/internal/util/PastyUtils$UploadResultCallback;->onFail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_83
    .catchall {:try_start_64 .. :try_end_83} :catchall_9e

    .line 83
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_a3

    .line 84
    nop

    .line 87
    goto :goto_ab

    .line 62
    :catchall_88
    move-exception v0

    :try_start_89
    invoke-virtual {v3}, Landroid/util/JsonReader;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception v2

    :try_start_8e
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_91
    throw v0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_9e

    .line 58
    :catchall_92
    move-exception v0

    if-eqz v2, :cond_9d

    :try_start_95
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_9d

    :catchall_99
    move-exception v2

    :try_start_9a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9d
    :goto_9d
    throw v0
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_9e

    .line 83
    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 84
    throw v0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a3} :catch_a3

    .line 85
    :catch_a3
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/android/internal/util/PastyUtils$1;->val$callback:Lcom/android/internal/util/PastyUtils$UploadResultCallback;

    const-string v2, "Failed to upload to Pasty"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/util/PastyUtils$UploadResultCallback;->onFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    :goto_ab
    return-void
.end method
