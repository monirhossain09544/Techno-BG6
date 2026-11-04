.class Landroid/service/autofill/VisibilitySetterAction$1;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/VisibilitySetterAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;
    .registers 7

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object p1

    .line 159
    nop

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 161
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 162
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 163
    if-nez v2, :cond_1e

    .line 164
    new-instance v2, Landroid/service/autofill/VisibilitySetterAction$Builder;

    invoke-direct {v2, v3, v4}, Landroid/service/autofill/VisibilitySetterAction$Builder;-><init>(II)V

    goto :goto_21

    .line 166
    :cond_1e
    invoke-virtual {v2, v3, v4}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    .line 160
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 169
    :cond_24
    if-nez v2, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {v2}, Landroid/service/autofill/VisibilitySetterAction$Builder;->build()Landroid/service/autofill/VisibilitySetterAction;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/VisibilitySetterAction;
    .registers 2

    .line 175
    new-array p1, p1, [Landroid/service/autofill/VisibilitySetterAction;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->newArray(I)[Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p1

    return-object p1
.end method
