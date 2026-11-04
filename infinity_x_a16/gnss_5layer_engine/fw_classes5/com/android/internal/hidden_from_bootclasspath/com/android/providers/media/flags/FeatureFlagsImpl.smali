.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist accessMediaOwnerPackageNamePermission:Z

.field private static blacklist audioSampleColumns:Z

.field private static blacklist cloudMediaProviderSearch:Z

.field private static blacklist cloudProviderAlbumsAsCategoryApi:Z

.field private static blacklist enableBackupAndRestore:Z

.field private static blacklist enableCloudMediaProviderCapabilities:Z

.field private static blacklist enableEmbeddedPhotopicker:Z

.field private static blacklist enableExclusionListForDefaultFolders:Z

.field private static blacklist enableLocalMediaProviderCapabilities:Z

.field private static blacklist enableMarkIsFavoriteStatusApi:Z

.field private static blacklist enableMarkMediaAsFavoriteApi:Z

.field private static blacklist enableMimeTypeFixForAndroid15:Z

.field private static blacklist enableModernPhotopicker:Z

.field private static blacklist enableOemMetadata:Z

.field private static blacklist enableOemMetadataUpdate:Z

.field private static blacklist enableOemMetadataUsingMimetype:Z

.field private static blacklist enablePhotopickerDatescrubber:Z

.field private static blacklist enablePhotopickerSearch:Z

.field private static blacklist enablePhotopickerTranscoding:Z

.field private static blacklist enablePickerHighlightSearchResultsApis:Z

.field private static blacklist enableSpecialFormatColumn:Z

.field private static blacklist enableStableUrisForExternalPrimaryVolume:Z

.field private static blacklist enableStableUrisForPublicVolume:Z

.field private static blacklist enableTrashAndRestoreByFilePathApi:Z

.field private static blacklist enableUnicodeCheck:Z

.field private static blacklist excludeUnreliableVolumes:Z

.field private static blacklist indexMediaLatitudeLongitude:Z

.field private static blacklist inferredMediaDate:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist mediaCognitionService:Z

.field private static blacklist mediaStoreOpenFile:Z

.field private static blacklist motionPhotoIntent:Z

.field private static blacklist pickOrderedImages:Z

.field private static blacklist pickerAccentColor:Z

.field private static blacklist pickerDefaultTab:Z

.field private static blacklist pickerPreSelectionExtra:Z

.field private static blacklist pickerRecentSelection:Z

.field private static blacklist revokeAccessOwnedPhotos:Z

.field private static blacklist versionLockdown:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->accessMediaOwnerPackageNamePermission:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->audioSampleColumns:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->cloudMediaProviderSearch:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->cloudProviderAlbumsAsCategoryApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableBackupAndRestore:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableCloudMediaProviderCapabilities:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableEmbeddedPhotopicker:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableExclusionListForDefaultFolders:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableLocalMediaProviderCapabilities:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMarkIsFavoriteStatusApi:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMarkMediaAsFavoriteApi:Z

    .line 22
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMimeTypeFixForAndroid15:Z

    .line 23
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableModernPhotopicker:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadata:Z

    .line 25
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadataUpdate:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadataUsingMimetype:Z

    .line 27
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerDatescrubber:Z

    .line 28
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerSearch:Z

    .line 29
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerTranscoding:Z

    .line 30
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePickerHighlightSearchResultsApis:Z

    .line 31
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableSpecialFormatColumn:Z

    .line 32
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableStableUrisForExternalPrimaryVolume:Z

    .line 33
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableStableUrisForPublicVolume:Z

    .line 34
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableTrashAndRestoreByFilePathApi:Z

    .line 35
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableUnicodeCheck:Z

    .line 36
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->excludeUnreliableVolumes:Z

    .line 37
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->indexMediaLatitudeLongitude:Z

    .line 38
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->inferredMediaDate:Z

    .line 39
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->mediaCognitionService:Z

    .line 40
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->mediaStoreOpenFile:Z

    .line 41
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->motionPhotoIntent:Z

    .line 42
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickOrderedImages:Z

    .line 43
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerAccentColor:Z

    .line 44
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerDefaultTab:Z

    .line 45
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerPreSelectionExtra:Z

    .line 46
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerRecentSelection:Z

    .line 47
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->revokeAccessOwnedPhotos:Z

    .line 48
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->versionLockdown:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 51
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.providers.media.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 52
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->accessMediaOwnerPackageNamePermission:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->audioSampleColumns:Z

    .line 54
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->cloudMediaProviderSearch:Z

    .line 55
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v4, 0x36ee81

    const/4 v5, 0x0

    if-lt v3, v4, :cond_19

    move v3, v1

    goto :goto_1f

    :cond_19
    const-string v3, "cloud_provider_albums_as_category_api"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1f
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->cloudProviderAlbumsAsCategoryApi:Z

    .line 56
    const-string v3, "enable_backup_and_restore"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableBackupAndRestore:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableCloudMediaProviderCapabilities:Z

    .line 58
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableEmbeddedPhotopicker:Z

    .line 59
    const-string v3, "enable_exclusion_list_for_default_folders"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableExclusionListForDefaultFolders:Z

    .line 60
    const-string v3, "enable_local_media_provider_capabilities"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableLocalMediaProviderCapabilities:Z

    .line 61
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMarkIsFavoriteStatusApi:Z

    .line 62
    const-string v3, "enable_mark_media_as_favorite_api"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMarkMediaAsFavoriteApi:Z

    .line 63
    const-string v3, "enable_mime_type_fix_for_android_15"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMimeTypeFixForAndroid15:Z

    .line 64
    const-string v3, "enable_modern_photopicker"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableModernPhotopicker:Z

    .line 65
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadata:Z

    .line 66
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_5f

    move v3, v1

    goto :goto_65

    :cond_5f
    const-string v3, "enable_oem_metadata_update"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_65
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadataUpdate:Z

    .line 67
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_6d

    move v3, v1

    goto :goto_73

    :cond_6d
    const-string v3, "enable_oem_metadata_using_mimetype"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_73
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadataUsingMimetype:Z

    .line 68
    const-string v3, "enable_photopicker_datescrubber"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerDatescrubber:Z

    .line 69
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerSearch:Z

    .line 70
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerTranscoding:Z

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v4, :cond_87

    move v3, v1

    goto :goto_8d

    :cond_87
    const-string v3, "enable_picker_highlight_search_results_apis"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_8d
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePickerHighlightSearchResultsApis:Z

    .line 72
    const-string v3, "enable_special_format_column"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableSpecialFormatColumn:Z

    .line 73
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableStableUrisForExternalPrimaryVolume:Z

    .line 74
    const-string v3, "enable_stable_uris_for_public_volume"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableStableUrisForPublicVolume:Z

    .line 75
    const-string v3, "enable_trash_and_restore_by_file_path_api"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableTrashAndRestoreByFilePathApi:Z

    .line 76
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableUnicodeCheck:Z

    .line 77
    const-string v3, "exclude_unreliable_volumes"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->excludeUnreliableVolumes:Z

    .line 78
    const-string v3, "index_media_latitude_longitude"

    invoke-virtual {v2, v3, v5}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->indexMediaLatitudeLongitude:Z

    .line 79
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->inferredMediaDate:Z

    .line 80
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->mediaCognitionService:Z

    .line 81
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->mediaStoreOpenFile:Z

    .line 82
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->motionPhotoIntent:Z

    .line 83
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickOrderedImages:Z

    .line 84
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerAccentColor:Z

    .line 85
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerDefaultTab:Z

    .line 86
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerPreSelectionExtra:Z

    .line 87
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerRecentSelection:Z

    .line 88
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->revokeAccessOwnedPhotos:Z

    .line 89
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->versionLockdown:Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d1} :catch_db
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_d1} :catch_d2

    goto :goto_e3

    .line 93
    :catch_d2
    move-exception v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 90
    :catch_db
    move-exception v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_e3
    nop

    .line 98
    :goto_e4
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist accessMediaOwnerPackageNamePermission()Z
    .registers 2

    .line 102
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 103
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 105
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->accessMediaOwnerPackageNamePermission:Z

    return v0
.end method

.method public blacklist audioSampleColumns()Z
    .registers 2

    .line 110
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 111
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 113
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->audioSampleColumns:Z

    return v0
.end method

.method public blacklist cloudMediaProviderSearch()Z
    .registers 2

    .line 118
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 119
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 121
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->cloudMediaProviderSearch:Z

    return v0
.end method

.method public blacklist cloudProviderAlbumsAsCategoryApi()Z
    .registers 2

    .line 126
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 127
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 129
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->cloudProviderAlbumsAsCategoryApi:Z

    return v0
.end method

.method public blacklist enableBackupAndRestore()Z
    .registers 2

    .line 134
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 135
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 137
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableBackupAndRestore:Z

    return v0
.end method

.method public blacklist enableCloudMediaProviderCapabilities()Z
    .registers 2

    .line 142
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 145
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableCloudMediaProviderCapabilities:Z

    return v0
.end method

.method public blacklist enableEmbeddedPhotopicker()Z
    .registers 2

    .line 150
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 153
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableEmbeddedPhotopicker:Z

    return v0
.end method

.method public blacklist enableExclusionListForDefaultFolders()Z
    .registers 2

    .line 158
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 159
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 161
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableExclusionListForDefaultFolders:Z

    return v0
.end method

.method public blacklist enableLocalMediaProviderCapabilities()Z
    .registers 2

    .line 166
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 167
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 169
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableLocalMediaProviderCapabilities:Z

    return v0
.end method

.method public blacklist enableMarkIsFavoriteStatusApi()Z
    .registers 2

    .line 174
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 175
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 177
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMarkIsFavoriteStatusApi:Z

    return v0
.end method

.method public blacklist enableMarkMediaAsFavoriteApi()Z
    .registers 2

    .line 182
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 183
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 185
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMarkMediaAsFavoriteApi:Z

    return v0
.end method

.method public blacklist enableMimeTypeFixForAndroid15()Z
    .registers 2

    .line 190
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 191
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 193
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableMimeTypeFixForAndroid15:Z

    return v0
.end method

.method public blacklist enableModernPhotopicker()Z
    .registers 2

    .line 198
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 201
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableModernPhotopicker:Z

    return v0
.end method

.method public blacklist enableOemMetadata()Z
    .registers 2

    .line 206
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 207
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 209
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadata:Z

    return v0
.end method

.method public blacklist enableOemMetadataUpdate()Z
    .registers 2

    .line 214
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 215
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 217
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadataUpdate:Z

    return v0
.end method

.method public blacklist enableOemMetadataUsingMimetype()Z
    .registers 2

    .line 222
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 223
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 225
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableOemMetadataUsingMimetype:Z

    return v0
.end method

.method public blacklist enablePhotopickerDatescrubber()Z
    .registers 2

    .line 230
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 231
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 233
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerDatescrubber:Z

    return v0
.end method

.method public blacklist enablePhotopickerSearch()Z
    .registers 2

    .line 238
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 239
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 241
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerSearch:Z

    return v0
.end method

.method public blacklist enablePhotopickerTranscoding()Z
    .registers 2

    .line 246
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 247
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 249
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePhotopickerTranscoding:Z

    return v0
.end method

.method public blacklist enablePickerHighlightSearchResultsApis()Z
    .registers 2

    .line 254
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 255
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 257
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enablePickerHighlightSearchResultsApis:Z

    return v0
.end method

.method public blacklist enableSpecialFormatColumn()Z
    .registers 2

    .line 262
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 263
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 265
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableSpecialFormatColumn:Z

    return v0
.end method

.method public blacklist enableStableUrisForExternalPrimaryVolume()Z
    .registers 2

    .line 270
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 271
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 273
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableStableUrisForExternalPrimaryVolume:Z

    return v0
.end method

.method public blacklist enableStableUrisForPublicVolume()Z
    .registers 2

    .line 278
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 279
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 281
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableStableUrisForPublicVolume:Z

    return v0
.end method

.method public blacklist enableTrashAndRestoreByFilePathApi()Z
    .registers 2

    .line 286
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 287
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 289
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableTrashAndRestoreByFilePathApi:Z

    return v0
.end method

.method public blacklist enableUnicodeCheck()Z
    .registers 2

    .line 294
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 295
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 297
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->enableUnicodeCheck:Z

    return v0
.end method

.method public blacklist excludeUnreliableVolumes()Z
    .registers 2

    .line 302
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 303
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 305
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->excludeUnreliableVolumes:Z

    return v0
.end method

.method public blacklist indexMediaLatitudeLongitude()Z
    .registers 2

    .line 310
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 311
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 313
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->indexMediaLatitudeLongitude:Z

    return v0
.end method

.method public blacklist inferredMediaDate()Z
    .registers 2

    .line 318
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 319
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 321
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->inferredMediaDate:Z

    return v0
.end method

.method public blacklist mediaCognitionService()Z
    .registers 2

    .line 326
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 327
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 329
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->mediaCognitionService:Z

    return v0
.end method

.method public blacklist mediaStoreOpenFile()Z
    .registers 2

    .line 334
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 335
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 337
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->mediaStoreOpenFile:Z

    return v0
.end method

.method public blacklist motionPhotoIntent()Z
    .registers 2

    .line 342
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 343
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 345
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->motionPhotoIntent:Z

    return v0
.end method

.method public blacklist pickOrderedImages()Z
    .registers 2

    .line 350
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 351
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 353
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickOrderedImages:Z

    return v0
.end method

.method public blacklist pickerAccentColor()Z
    .registers 2

    .line 358
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 359
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 361
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerAccentColor:Z

    return v0
.end method

.method public blacklist pickerDefaultTab()Z
    .registers 2

    .line 366
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 367
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 369
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerDefaultTab:Z

    return v0
.end method

.method public blacklist pickerPreSelectionExtra()Z
    .registers 2

    .line 374
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 375
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 377
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerPreSelectionExtra:Z

    return v0
.end method

.method public blacklist pickerRecentSelection()Z
    .registers 2

    .line 382
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 383
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 385
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->pickerRecentSelection:Z

    return v0
.end method

.method public blacklist revokeAccessOwnedPhotos()Z
    .registers 2

    .line 390
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 391
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 393
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->revokeAccessOwnedPhotos:Z

    return v0
.end method

.method public blacklist versionLockdown()Z
    .registers 2

    .line 398
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 399
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->init()V

    .line 401
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/FeatureFlagsImpl;->versionLockdown:Z

    return v0
.end method
