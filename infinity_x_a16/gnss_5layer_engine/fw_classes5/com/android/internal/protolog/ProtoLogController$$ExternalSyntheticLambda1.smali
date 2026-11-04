.class public final synthetic Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/protolog/ProtoLogController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/protolog/ProtoLogController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/protolog/ProtoLogController;

    check-cast p1, Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-static {v0, p1}, Lcom/android/internal/protolog/ProtoLogController;->$r8$lambda$_FBC1SXAwGAmUeldTMLuiRIJJQo(Lcom/android/internal/protolog/ProtoLogController;Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result p1

    return p1
.end method
