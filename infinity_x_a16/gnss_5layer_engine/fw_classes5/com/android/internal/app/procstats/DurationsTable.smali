.class public Lcom/android/internal/app/procstats/DurationsTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "DurationsTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist addDuration(IJ)V
    .registers 6

    .line 48
    int-to-byte p1, p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getOrAddKey(BI)I

    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->setValue(IJ)V

    .line 50
    return-void
.end method

.method public blacklist addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V
    .registers 8

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    .line 35
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 36
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 37
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 39
    :cond_19
    return-void
.end method
