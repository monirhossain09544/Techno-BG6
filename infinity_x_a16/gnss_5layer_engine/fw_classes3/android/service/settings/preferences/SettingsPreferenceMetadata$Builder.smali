.class public final Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
.super Ljava/lang/Object;
.source "SettingsPreferenceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/SettingsPreferenceMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAvailable:Z

.field private blacklist mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mLaunchIntent:Landroid/content/Intent;

.field private blacklist mReadPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestricted:Z

.field private final blacklist mScreenKey:Ljava/lang/String;

.field private blacklist mSensitivity:I

.field private blacklist mSummary:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mWritable:Z

.field private blacklist mWritePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mAvailable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBreadcrumbs(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLaunchIntent(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mLaunchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadPermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mReadPermissions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestricted(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mScreenKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensitivity(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritePermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritePermissions:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mBreadcrumbs:Ljava/util/List;

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mReadPermissions:Ljava/util/List;

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritePermissions:Ljava/util/List;

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mEnabled:Z

    .line 321
    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mAvailable:Z

    .line 322
    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritable:Z

    .line 323
    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mRestricted:Z

    .line 324
    const/4 v0, 0x3

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 337
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 340
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mScreenKey:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mKey:Ljava/lang/String;

    .line 342
    return-void

    .line 338
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "screenKey cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/SettingsPreferenceMetadata;
    .registers 4

    .line 458
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 459
    iput-object v2, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mLaunchIntent:Landroid/content/Intent;

    .line 461
    :cond_8
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    invoke-direct {v0, p0, v2}, Landroid/service/settings/preferences/SettingsPreferenceMetadata;-><init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;Landroid/service/settings/preferences/SettingsPreferenceMetadata-IA;)V

    return-object v0
.end method

.method public whitelist setAvailable(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 404
    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mAvailable:Z

    .line 405
    return-object p0
.end method

.method public blacklist setBreadcrumbs(Ljava/util/List;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mBreadcrumbs:Ljava/util/List;

    .line 369
    return-object p0
.end method

.method public whitelist setEnabled(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 395
    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mEnabled:Z

    .line 396
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 449
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mExtras:Landroid/os/Bundle;

    .line 450
    return-object p0
.end method

.method public whitelist setLaunchIntent(Landroid/content/Intent;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 440
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mLaunchIntent:Landroid/content/Intent;

    .line 441
    return-object p0
.end method

.method public whitelist setReadPermissions(Ljava/util/List;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mReadPermissions:Ljava/util/List;

    .line 378
    return-object p0
.end method

.method public whitelist setRestricted(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 422
    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mRestricted:Z

    .line 423
    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/String;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 358
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSummary:Ljava/lang/String;

    .line 359
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 349
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mTitle:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public whitelist setWritable(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 413
    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritable:Z

    .line 414
    return-object p0
.end method

.method public whitelist setWritePermissions(Ljava/util/List;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;"
        }
    .end annotation

    .line 386
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritePermissions:Ljava/util/List;

    .line 387
    return-object p0
.end method

.method public whitelist setWriteSensitivity(I)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .registers 2

    .line 431
    iput p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    .line 432
    return-object p0
.end method
