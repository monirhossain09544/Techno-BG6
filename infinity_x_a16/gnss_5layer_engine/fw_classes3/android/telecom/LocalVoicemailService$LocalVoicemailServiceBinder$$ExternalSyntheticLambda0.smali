.class public final synthetic Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;

.field public final synthetic blacklist f$1:Landroid/telecom/ParcelableCall;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;Landroid/telecom/ParcelableCall;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;

    iput-object p2, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/ParcelableCall;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;

    iget-object v1, p0, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/ParcelableCall;

    invoke-static {v0, v1}, Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;->$r8$lambda$5ZK2A9BEiQLNXe_UN1dt1i3M2gA(Landroid/telecom/LocalVoicemailService$LocalVoicemailServiceBinder;Landroid/telecom/ParcelableCall;)V

    return-void
.end method
