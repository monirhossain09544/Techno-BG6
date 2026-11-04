.class public Lcom/android/internal/globalactions/ActionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionsAdapter.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

.field private final blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyguardShowing:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/globalactions/Action;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    .line 42
    iput-object p4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 7

    .line 47
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    .line 49
    nop

    .line 51
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_36

    .line 52
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/globalactions/Action;

    .line 54
    if-eqz v0, :cond_28

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showDuringKeyguard()Z

    move-result v5

    if-nez v5, :cond_28

    .line 55
    goto :goto_33

    .line 57
    :cond_28
    if-nez v1, :cond_31

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showBeforeProvisioning()Z

    move-result v4

    if-nez v4, :cond_31

    .line 58
    goto :goto_33

    .line 60
    :cond_31
    add-int/lit8 v3, v3, 0x1

    .line 51
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 62
    :cond_36
    return v3
.end method

.method public blacklist getItem(I)Lcom/android/internal/globalactions/Action;
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    .line 80
    nop

    .line 81
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_39

    .line 82
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/globalactions/Action;

    .line 83
    if-eqz v0, :cond_28

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showDuringKeyguard()Z

    move-result v5

    if-nez v5, :cond_28

    .line 84
    goto :goto_36

    .line 86
    :cond_28
    if-nez v1, :cond_31

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showBeforeProvisioning()Z

    move-result v5

    if-nez v5, :cond_31

    .line 87
    goto :goto_36

    .line 89
    :cond_31
    if-ne v3, p1, :cond_34

    .line 90
    return-object v4

    .line 92
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 81
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 95
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " out of range of showable actions, filtered count="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", keyguardshowing="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", provisioned="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-interface {p1, v0, p2, p3, v1}, Lcom/android/internal/globalactions/Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist isEnabled(I)Z
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/globalactions/Action;->isEnabled()Z

    move-result p1

    return p1
.end method
