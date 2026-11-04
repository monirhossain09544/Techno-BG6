.class public Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
.super Ljava/lang/Object;
.source "ParsedProcessImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedProcess;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist appClassNamesByPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist deniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gwpAsanMode:I

.field private blacklist memtagMode:I

.field private blacklist name:Ljava/lang/String;

.field private blacklist nativeHeapZeroInitialized:I

.field private blacklist useEmbeddedDex:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 244
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 247
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 248
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 315
    :cond_17
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 46
    nop

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 52
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 54
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 60
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 46
    nop

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 52
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 54
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 282
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 283
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 285
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 286
    sget-object v3, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 291
    iput-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    .line 292
    const-class v1, Landroid/annotation/NonNull;

    iget-object v6, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 294
    iput-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 295
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-static {v1, v7, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 297
    iput-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 298
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-static {v1, v7, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 300
    iput v4, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 301
    const-class v1, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-static {v1, v7, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 303
    iput v5, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 304
    const-class v1, Landroid/content/pm/ApplicationInfo$MemtagMode;

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-static {v1, v7, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 306
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 307
    const-class p1, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-static {p1, v7, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 309
    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    .line 312
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 46
    nop

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 52
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 54
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 63
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_28

    .line 65
    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    goto :goto_31

    :cond_28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    :goto_31
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 67
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 68
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 69
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 70
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/Set;IIIZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 46
    nop

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 52
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 54
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 124
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    .line 125
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 128
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 130
    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 131
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 133
    iput p4, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 134
    const-class p1, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 136
    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 137
    const-class p1, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {p1, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 139
    iput p6, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 140
    const-class p1, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {p1, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 142
    iput-boolean p7, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    .line 145
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    return-void
.end method


# virtual methods
.method public blacklist addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 75
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 76
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 77
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 78
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    .line 80
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object p1

    .line 81
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 82
    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 84
    :cond_43
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppClassNamesByPackage()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getDeniedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getGwpAsanMode()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    return v0
.end method

.method public blacklist getMemtagMode()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNativeHeapZeroInitialized()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    return v0
.end method

.method public blacklist putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 93
    :cond_10
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public blacklist setAppClassNamesByPackage(Landroid/util/ArrayMap;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    .line 199
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 201
    return-object p0
.end method

.method public blacklist setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    .line 207
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 209
    return-object p0
.end method

.method public blacklist setGwpAsanMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 4

    .line 214
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    .line 215
    const-class p1, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 217
    return-object p0
.end method

.method public blacklist setMemtagMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 4

    .line 222
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    .line 223
    const-class p1, Landroid/content/pm/ApplicationInfo$MemtagMode;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 225
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 4

    .line 187
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    .line 188
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 190
    return-object p0
.end method

.method public blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 4

    .line 230
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    .line 231
    const-class p1, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 233
    return-object p0
.end method

.method public blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .registers 2

    .line 238
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    .line 239
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 259
    nop

    .line 260
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 261
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 264
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 265
    iget p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void
.end method
