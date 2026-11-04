.class public Landroid/media/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/DemuxCapabilities$FilterCapabilities;
    }
.end annotation


# instance fields
.field private final blacklist mAudioFilterCount:I

.field private final blacklist mDemuxCount:I

.field private final blacklist mFilterCaps:I

.field private final blacklist mFilterCapsList:[I

.field private final blacklist mLinkCaps:[I

.field private final blacklist mPcrFilterCount:I

.field private final blacklist mPesFilterCount:I

.field private final blacklist mPlaybackCount:I

.field private final blacklist mRecordCount:I

.field private final blacklist mSectionFilterCount:I

.field private final blacklist mSectionFilterLength:J

.field private final blacklist mSupportTimeFilter:Z

.field private final blacklist mTsFilterCount:I

.field private final blacklist mVideoFilterCount:I


# direct methods
.method private constructor blacklist <init>(IIIIIIIIIJI[I[IZ)V
    .registers 16

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    .line 72
    iput p2, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    .line 73
    iput p3, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    .line 74
    iput p4, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    .line 75
    iput p5, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    .line 76
    iput p6, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    .line 77
    iput p7, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    .line 78
    iput p8, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    .line 79
    iput p9, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    .line 80
    iput-wide p10, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    .line 81
    iput p12, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    .line 82
    iput-object p13, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    .line 83
    iput-object p14, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    .line 84
    iput-boolean p15, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist getAudioFilterCount()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    return v0
.end method

.method public whitelist getDemuxCount()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    return v0
.end method

.method public whitelist getFilterCapabilities()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    return v0
.end method

.method public whitelist getFilterTypeCapabilityList()[I
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    return-object v0
.end method

.method public whitelist getLinkCapabilities()[I
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    return-object v0
.end method

.method public whitelist getPcrFilterCount()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    return v0
.end method

.method public whitelist getPesFilterCount()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    return v0
.end method

.method public whitelist getPlaybackCount()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    return v0
.end method

.method public whitelist getRecordCount()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    return v0
.end method

.method public whitelist getSectionFilterCount()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    return v0
.end method

.method public whitelist getSectionFilterLength()J
    .registers 3

    .line 146
    iget-wide v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    return-wide v0
.end method

.method public whitelist getTsFilterCount()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    return v0
.end method

.method public whitelist getVideoFilterCount()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    return v0
.end method

.method public whitelist isTimeFilterSupported()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return v0
.end method
