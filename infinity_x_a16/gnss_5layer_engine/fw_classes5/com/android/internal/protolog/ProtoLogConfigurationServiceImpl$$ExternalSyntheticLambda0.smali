.class public final synthetic Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;

    invoke-static {v0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->lambda$toggleProtoLogToLogcat$0(Ljava/util/Set;Landroid/os/IBinder;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;)V

    return-void
.end method
