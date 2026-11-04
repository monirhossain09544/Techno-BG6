.class final Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;
.super Ljava/lang/Object;
.source "ProtoLogConfigurationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientRecord"
.end annotation


# instance fields
.field public final blacklist client:Lcom/android/internal/protolog/IProtoLogClient;

.field public final blacklist configFile:Ljava/lang/String;

.field public final blacklist groups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/IProtoLogClient;Ljava/lang/String;)V
    .registers 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->groups:Ljava/util/Set;

    .line 118
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->client:Lcom/android/internal/protolog/IProtoLogClient;

    .line 119
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->configFile:Ljava/lang/String;

    .line 120
    return-void
.end method
