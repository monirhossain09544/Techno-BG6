.class Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;
.super Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;
.source "DualDumpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/dump/DualDumpOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpField"
.end annotation


# instance fields
.field private final blacklist mValue:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V

    .line 120
    iput-object p2, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;->mValue:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist print(Landroid/util/IndentingPrintWriter;Z)V
    .registers 4

    .line 125
    if-eqz p2, :cond_21

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 128
    :cond_21
    iget-object p2, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :goto_26
    return-void
.end method
