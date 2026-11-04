.class public Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
.super Landroid/media/tv/tuner/filter/SectionSettings;
.source "SectionSettingsWithSectionBits.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mFilter:[B

.field private final blacklist mMask:[B

.field private final blacklist mMode:[B


# direct methods
.method private constructor blacklist <init>(IZZZI[B[B[B)V
    .registers 9

    .line 35
    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/filter/SectionSettings;-><init>(IZZZI)V

    .line 36
    move-object p1, p0

    iput-object p6, p1, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mFilter:[B

    .line 37
    iput-object p7, p1, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMask:[B

    .line 38
    iput-object p8, p1, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMode:[B

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(IZZZI[B[B[BLandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;-><init>(IZZZI[B[B[B)V

    return-void
.end method

.method public static whitelist builder(I)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 3

    .line 77
    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;-><init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getFilterBytes()[B
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mFilter:[B

    return-object v0
.end method

.method public whitelist getMask()[B
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMask:[B

    return-object v0
.end method

.method public whitelist getMode()[B
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMode:[B

    return-object v0
.end method
