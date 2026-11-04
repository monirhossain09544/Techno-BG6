.class public Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
.super Ljava/lang/Object;
.source "ParsedUsesPermissionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForPurposes:Lcom/android/internal/util/Parcelling;
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
.field private blacklist name:Ljava/lang/String;

.field private blacklist purposes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesPermissionFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 123
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 126
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 127
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 133
    :cond_17
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 134
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForPurposes:Lcom/android/internal/util/Parcelling;

    .line 137
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForPurposes:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2e

    .line 138
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForPurposes:Lcom/android/internal/util/Parcelling;

    .line 183
    :cond_2e
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    sget-object v2, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForPurposes:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 169
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 170
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 172
    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 173
    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 175
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    .line 176
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 70
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 72
    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 73
    const-class p1, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 75
    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    .line 76
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPurposes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getUsesPermissionFlags()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    return v0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4

    .line 99
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 100
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 102
    return-object p0
.end method

.method public blacklist setPurposes(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    .line 116
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 118
    return-object p0
.end method

.method public blacklist setUsesPermissionFlags(I)Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4

    .line 107
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 108
    const-class p1, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 110
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 149
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 150
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForPurposes:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->purposes:Ljava/util/Set;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 152
    return-void
.end method
