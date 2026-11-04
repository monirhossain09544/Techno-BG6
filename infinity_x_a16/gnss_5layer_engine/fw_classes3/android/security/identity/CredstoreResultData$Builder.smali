.class Landroid/security/identity/CredstoreResultData$Builder;
.super Ljava/lang/Object;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredstoreResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mResultData:Landroid/security/identity/CredstoreResultData;


# direct methods
.method constructor blacklist <init>(I[B[B[B[B)V
    .registers 7

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/security/identity/CredstoreResultData;

    invoke-direct {v0}, Landroid/security/identity/CredstoreResultData;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    .line 142
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput p1, v0, Landroid/security/identity/CredstoreResultData;->mFeatureVersion:I

    .line 143
    iget-object p1, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p2, p1, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    .line 144
    iget-object p1, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p3, p1, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    .line 145
    iget-object p1, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p4, p1, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    .line 146
    iget-object p1, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    iput-object p5, p1, Landroid/security/identity/CredstoreResultData;->mSignature:[B

    .line 147
    return-void
.end method

.method private blacklist getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreResultData$EntryData;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    invoke-static {v0}, Landroid/security/identity/CredstoreResultData;->-$$Nest$fgetmData(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 151
    if-nez v0, :cond_1c

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    iget-object v1, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    invoke-static {v1}, Landroid/security/identity/CredstoreResultData;->-$$Nest$fgetmData(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1c
    return-object v0
.end method


# virtual methods
.method blacklist addEntry(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/identity/CredstoreResultData$Builder;
    .registers 6

    .line 159
    invoke-direct {p0, p1}, Landroid/security/identity/CredstoreResultData$Builder;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 160
    new-instance v0, Landroid/security/identity/CredstoreResultData$EntryData;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/security/identity/CredstoreResultData$EntryData;-><init>([BI)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-object p0
.end method

.method blacklist addErrorStatus(Ljava/lang/String;Ljava/lang/String;I)Landroid/security/identity/CredstoreResultData$Builder;
    .registers 6

    .line 165
    invoke-direct {p0, p1}, Landroid/security/identity/CredstoreResultData$Builder;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 166
    new-instance v0, Landroid/security/identity/CredstoreResultData$EntryData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Landroid/security/identity/CredstoreResultData$EntryData;-><init>([BI)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-object p0
.end method

.method blacklist build()Landroid/security/identity/CredstoreResultData;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData$Builder;->mResultData:Landroid/security/identity/CredstoreResultData;

    return-object v0
.end method
