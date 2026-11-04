.class public final synthetic Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-static {v0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->lambda$registerOnStartCallback$0(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Ljava/lang/Integer;Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method
