.class public final synthetic Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/Settings$NameValueCache;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/Settings$NameValueCache;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;->f$0:Landroid/provider/Settings$NameValueCache;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;->f$0:Landroid/provider/Settings$NameValueCache;

    check-cast p1, Landroid/provider/Settings$GenerationTracker$Key;

    invoke-static {v0, p1}, Landroid/provider/Settings$NameValueCache;->$r8$lambda$wb_V0X9Wt6aU2LZtNv8KpjFtc0I(Landroid/provider/Settings$NameValueCache;Landroid/provider/Settings$GenerationTracker$Key;)V

    return-void
.end method
