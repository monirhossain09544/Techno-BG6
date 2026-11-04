.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedPermission;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field private blacklist backgroundPermission:Ljava/lang/String;

.field private blacklist group:Ljava/lang/String;

.field private blacklist knownCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

.field private blacklist protectionLevel:I

.field private blacklist purposeRequired:Z

.field private blacklist requestRes:I

.field private blacklist requiresPurposeTargetSdkVersion:I

.field private blacklist tree:Z

.field private blacklist validPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 47
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 147
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 68
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requiresPurposeTargetSdkVersion:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->purposeRequired:Z

    .line 139
    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 141
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 142
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 143
    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->validPurposes:Ljava/util/List;

    .line 144
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/android/internal/pm/pkg/component/ParsedPermissionGroup;Ljava/util/Set;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZZ",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 189
    iput p3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 190
    iput p4, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 191
    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requiresPurposeTargetSdkVersion:I

    .line 192
    iput-boolean p6, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 193
    iput-boolean p7, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->purposeRequired:Z

    .line 194
    iput-object p8, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 195
    iput-object p9, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 196
    iput-object p10, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->validPurposes:Ljava/util/List;

    .line 199
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundPermission()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroup()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKnownCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    :goto_b
    return-object v0
.end method

.method public blacklist getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    return-object v0
.end method

.method public blacklist getProtectionLevel()I
    .registers 2

    .line 218
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return v0
.end method

.method public blacklist getRequestRes()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return v0
.end method

.method public blacklist getRequiresPurposeTargetSdkVersion()I
    .registers 2

    .line 223
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requiresPurposeTargetSdkVersion:I

    return v0
.end method

.method public blacklist getValidPurposes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->validPurposes:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->validPurposes:Ljava/util/List;

    :goto_b
    return-object v0
.end method

.method public blacklist isPurposeRequired()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->purposeRequired:Z

    return v0
.end method

.method public blacklist isTree()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return v0
.end method

.method public blacklist setBackgroundPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public blacklist setGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method protected blacklist setKnownCert(Ljava/lang/String;)V
    .registers 3

    .line 82
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 83
    return-void
.end method

.method public blacklist setKnownCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 281
    return-object p0
.end method

.method protected blacklist setKnownCerts([Ljava/lang/String;)V
    .registers 7

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    .line 88
    iget-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 90
    :cond_1b
    return-void
.end method

.method public blacklist setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 275
    return-object p0
.end method

.method public blacklist setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 250
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 251
    return-object p0
.end method

.method public blacklist setPurposeRequired(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 268
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->purposeRequired:Z

    .line 269
    return-object p0
.end method

.method public blacklist setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 244
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 245
    return-object p0
.end method

.method public blacklist setRequiresPurposeTargetSdkVersion(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 256
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requiresPurposeTargetSdkVersion:I

    .line 257
    return-object p0
.end method

.method public blacklist setTree(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 263
    return-object p0
.end method

.method public blacklist setValidPurposes(Ljava/util/List;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->validPurposes:Ljava/util/List;

    .line 287
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requiresPurposeTargetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->purposeRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 127
    iget-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->validPurposes:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 128
    return-void
.end method
