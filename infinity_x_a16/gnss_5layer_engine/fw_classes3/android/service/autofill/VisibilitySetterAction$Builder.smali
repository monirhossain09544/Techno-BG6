.class public final Landroid/service/autofill/VisibilitySetterAction$Builder;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDestroyed:Z

.field private final blacklist mVisibilities:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmVisibilities(Landroid/service/autofill/VisibilitySetterAction$Builder;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    .line 88
    return-void
.end method

.method private blacklist throwIfDestroyed()V
    .registers 3

    .line 123
    iget-boolean v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Already called build()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/VisibilitySetterAction;
    .registers 3

    .line 117
    invoke-direct {p0}, Landroid/service/autofill/VisibilitySetterAction$Builder;->throwIfDestroyed()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mDestroyed:Z

    .line 119
    new-instance v0, Landroid/service/autofill/VisibilitySetterAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/VisibilitySetterAction;-><init>(Landroid/service/autofill/VisibilitySetterAction$Builder;Landroid/service/autofill/VisibilitySetterAction-IA;)V

    return-object v0
.end method

.method public whitelist setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;
    .registers 5

    .line 101
    invoke-direct {p0}, Landroid/service/autofill/VisibilitySetterAction$Builder;->throwIfDestroyed()V

    .line 102
    sparse-switch p2, :sswitch_data_26

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :sswitch_1f
    iget-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    return-object p0

    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_1f
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1f
    .end sparse-switch
.end method
