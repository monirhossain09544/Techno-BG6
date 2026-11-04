.class Landroid/security/identity/PersonalizationData$NamespaceData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NamespaceData"
.end annotation


# instance fields
.field private blacklist mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/security/identity/PersonalizationData$EntryData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNamespace:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEntries(Landroid/security/identity/PersonalizationData$NamespaceData;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    .line 64
    iput-object p1, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mNamespace:Ljava/lang/String;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/security/identity/PersonalizationData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/identity/PersonalizationData$NamespaceData;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfileId;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/identity/PersonalizationData$EntryData;

    .line 77
    if-eqz p1, :cond_d

    .line 78
    iget-object p1, p1, Landroid/security/identity/PersonalizationData$EntryData;->mAccessControlProfileIds:Ljava/util/Collection;

    return-object p1

    .line 80
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist getEntryNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist getEntryValue(Ljava/lang/String;)[B
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/identity/PersonalizationData$EntryData;

    .line 85
    if-eqz p1, :cond_d

    .line 86
    iget-object p1, p1, Landroid/security/identity/PersonalizationData$EntryData;->mValue:[B

    return-object p1

    .line 88
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist getNamespaceName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$NamespaceData;->mNamespace:Ljava/lang/String;

    return-object v0
.end method
