.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags; = null

.field public static final blacklist FLAG_CHOOSER_ALBUM_TEXT:Ljava/lang/String; = "android.service.chooser.chooser_album_text"

.field public static final blacklist FLAG_CHOOSER_PAYLOAD_TOGGLING:Ljava/lang/String; = "android.service.chooser.chooser_payload_toggling"

.field public static final blacklist FLAG_ENABLE_CHOOSER_RESULT:Ljava/lang/String; = "android.service.chooser.enable_chooser_result"

.field public static final blacklist FLAG_ENABLE_SHARESHEET_METADATA_EXTRA:Ljava/lang/String; = "android.service.chooser.enable_sharesheet_metadata_extra"

.field public static final blacklist FLAG_FIX_RESOLVER_MEMORY_LEAK:Ljava/lang/String; = "android.service.chooser.fix_resolver_memory_leak"

.field public static final blacklist FLAG_INTERACTIVE_CHOOSER:Ljava/lang/String; = "android.service.chooser.interactive_chooser"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist chooserAlbumText()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->chooserAlbumText()Z

    move-result v0

    return v0
.end method

.method public static blacklist chooserPayloadToggling()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->chooserPayloadToggling()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableChooserResult()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->enableChooserResult()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSharesheetMetadataExtra()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->enableSharesheetMetadataExtra()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixResolverMemoryLeak()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->fixResolverMemoryLeak()Z

    move-result v0

    return v0
.end method

.method public static blacklist interactiveChooser()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/FeatureFlags;->interactiveChooser()Z

    move-result v0

    return v0
.end method
