.class public Landroid/os/IncidentManager$PendingReport;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingReport"
.end annotation


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mRequestingPackage:Ljava/lang/String;

.field private final blacklist mTimestamp:J

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 5

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    nop

    .line 200
    :try_start_4
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_e} :catch_61

    .line 204
    nop

    .line 205
    iput v0, p0, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    .line 207
    const-string/jumbo v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_48

    .line 212
    iput-object v0, p0, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    .line 214
    nop

    .line 216
    :try_start_1d
    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_28} :catch_2e

    .line 220
    nop

    .line 221
    iput-wide v0, p0, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    .line 223
    iput-object p1, p0, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    .line 224
    return-void

    .line 217
    :catch_2e
    move-exception v0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: No t parameter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: No pkg parameter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :catch_61
    move-exception v0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: No flags parameter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 272
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 273
    return v0

    .line 275
    :cond_4
    instance-of v1, p1, Landroid/os/IncidentManager$PendingReport;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 276
    return v2

    .line 278
    :cond_a
    check-cast p1, Landroid/os/IncidentManager$PendingReport;

    .line 279
    iget-object v1, p0, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    iget-object v3, p1, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    iget v3, p1, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    if-ne v1, v3, :cond_2f

    iget-object v1, p0, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    iget-object v3, p1, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-wide v3, p0, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    iget-wide v5, p1, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 279
    :goto_30
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 240
    iget v0, p0, Landroid/os/IncidentManager$PendingReport;->mFlags:I

    return v0
.end method

.method public whitelist getRequestingPackage()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/os/IncidentManager$PendingReport;->mRequestingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 247
    iget-wide v0, p0, Landroid/os/IncidentManager$PendingReport;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/os/IncidentManager$PendingReport;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingReport("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/IncidentManager$PendingReport;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
