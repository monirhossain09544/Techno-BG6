.class public Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStatsFormatter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
    }
.end annotation


# static fields
.field private static final blacklist NANO_TO_MILLI_MULTIPLIER:D = 1.0E-6

.field private static final blacklist SECTION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 636
    nop

    .line 637
    const-string v0, "([^:]+):(\\d+)(\\[(?<L>\\d+)])?(?<F>\\S*)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->SECTION_PATTERN:Ljava/util/regex/Pattern;

    .line 636
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->parseFormat(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->mSections:Ljava/util/List;

    .line 642
    return-void
.end method

.method private blacklist format(Ljava/util/List;[J)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;",
            ">;[J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 698
    if-nez p1, :cond_7

    .line 699
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 702
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_9b

    .line 704
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;

    .line 705
    iget v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-nez v5, :cond_20

    .line 706
    goto/16 :goto_97

    .line 709
    :cond_20
    iget-boolean v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->optional:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_40

    .line 710
    nop

    .line 711
    move v5, v2

    :goto_27
    iget v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-ge v5, v7, :cond_3c

    .line 712
    iget v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    add-int/2addr v7, v5

    aget-wide v7, p2, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_39

    .line 713
    nop

    .line 714
    move v5, v6

    goto :goto_3d

    .line 711
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_3c
    move v5, v2

    .line 717
    :goto_3d
    if-nez v5, :cond_40

    .line 718
    goto :goto_97

    .line 722
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 723
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    :cond_4b
    iget-object v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-eq v5, v6, :cond_5f

    .line 727
    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    :cond_5f
    move v5, v2

    :goto_60
    iget v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-ge v5, v7, :cond_8e

    .line 730
    if-eqz v5, :cond_6b

    .line 731
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_6b
    iget-boolean v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->typePower:Z

    if-eqz v7, :cond_83

    .line 734
    iget v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    add-int/2addr v7, v5

    aget-wide v7, p2, v7

    long-to-double v7, v7

    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 737
    :cond_83
    iget v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    add-int/2addr v7, v5

    aget-wide v7, p2, v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 729
    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 740
    :cond_8e
    iget v4, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-eq v4, v6, :cond_97

    .line 741
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 744
    :cond_9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist parseFormat(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;",
            ">;"
        }
    .end annotation

    .line 653
    const/4 v0, 0x0

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_bd

    .line 657
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    sget-object v2, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->SECTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 659
    const/4 v3, 0x0

    move v4, v3

    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_bc

    .line 660
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const-string v6, "PowerStats"

    if-eqz v5, :cond_9f

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    if-eq v5, v4, :cond_2e

    goto/16 :goto_9f

    .line 664
    :cond_2e
    new-instance v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;

    invoke-direct {v4, v0}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;-><init>(Lcom/android/internal/os/PowerStats-IA;)V

    .line 665
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->label:Ljava/lang/String;

    .line 666
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    .line 667
    const-string v7, "L"

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 668
    if-eqz v7, :cond_54

    .line 669
    invoke-static {v7}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    goto :goto_56

    .line 671
    :cond_54
    iput v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    .line 673
    :goto_56
    const-string v7, "F"

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 674
    if-eqz v7, :cond_96

    .line 675
    move v8, v3

    :goto_5f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_96

    .line 676
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 677
    sparse-switch v9, :sswitch_data_be

    .line 685
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported format option \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 682
    :sswitch_8d
    iput-boolean v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->typePower:Z

    .line 683
    goto :goto_93

    .line 679
    :sswitch_90
    iput-boolean v5, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->optional:Z

    .line 680
    nop

    .line 675
    :goto_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    .line 691
    :cond_96
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto/16 :goto_18

    .line 661
    :cond_9f
    :goto_9f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad power stats format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-object v0

    .line 694
    :cond_bc
    return-object v1

    .line 654
    :cond_bd
    :goto_bd
    return-object v0

    :sswitch_data_be
    .sparse-switch
        0x3f -> :sswitch_90
        0x70 -> :sswitch_8d
    .end sparse-switch
.end method


# virtual methods
.method public blacklist format([J)Ljava/lang/String;
    .registers 3

    .line 649
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->mSections:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format(Ljava/util/List;[J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
