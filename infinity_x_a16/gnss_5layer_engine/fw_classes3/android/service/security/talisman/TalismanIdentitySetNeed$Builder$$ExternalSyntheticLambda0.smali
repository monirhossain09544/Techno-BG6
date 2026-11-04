.class public final synthetic Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->lambda$build$1(ILjava/util/List;)Z

    move-result p1

    return p1
.end method
