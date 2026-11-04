.class public Lcom/android/internal/util/dump/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V
    .registers 8

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 51
    const-wide v0, 0x10900000001L

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "package_name"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 52
    const-wide v0, 0x10900000002L

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "class_name"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 54
    return-void
.end method

.method public static blacklist writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    .registers 5

    .line 35
    if-eqz p4, :cond_5

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    :cond_5
    return-void
.end method
