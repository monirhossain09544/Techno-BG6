.class public final Landroid/service/autofill/FillContext;
.super Ljava/lang/Object;
.source "FillContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFocusedId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mRequestId:I

.field private final greylist-max-o mStructure:Landroid/app/assist/AssistStructure;

.field private transient greylist-max-o mViewNodeLookupTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 245
    new-instance v0, Landroid/service/autofill/FillContext$1;

    invoke-direct {v0}, Landroid/service/autofill/FillContext$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V
    .registers 5

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    .line 192
    iput-object p2, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    .line 193
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 195
    iput-object p3, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 196
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;
    .registers 11

    .line 98
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 99
    array-length v1, p1

    new-array v1, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    .line 102
    new-instance v2, Landroid/util/SparseIntArray;

    array-length v3, p1

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 104
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    array-length v5, p1

    if-ge v4, v5, :cond_36

    .line 105
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-eqz v5, :cond_30

    .line 106
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    .line 108
    if-ltz v5, :cond_2c

    .line 109
    iget-object v6, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v5, v1, v4

    goto :goto_2f

    .line 111
    :cond_2c
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    :goto_2f
    goto :goto_33

    .line 114
    :cond_30
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 118
    :cond_36
    iget-object v4, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v4

    .line 119
    move v5, v3

    :goto_3d
    if-ge v5, v4, :cond_4f

    .line 120
    iget-object v6, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v6, v5}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 123
    :cond_4f
    :goto_4f
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_a6

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a6

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistStructure$ViewNode;

    .line 126
    move v5, v3

    :goto_62
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_94

    .line 127
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 128
    aget-object v7, p1, v6

    .line 130
    if-eqz v7, :cond_91

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 131
    aput-object v4, v1, v6

    .line 133
    iget-object v6, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v6, :cond_88

    .line 134
    new-instance v6, Landroid/util/ArrayMap;

    array-length v8, p1

    invoke-direct {v6, v8}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v6, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    .line 137
    :cond_88
    iget-object v6, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 140
    goto :goto_94

    .line 126
    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 144
    :cond_94
    :goto_94
    move v5, v3

    :goto_95
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_a5

    .line 145
    invoke-virtual {v4, v5}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 147
    :cond_a5
    goto :goto_4f

    .line 150
    :cond_a6
    nop

    :goto_a7
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_cb

    .line 151
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v0, :cond_bc

    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    .line 155
    :cond_bc
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aget-object v4, p1, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 158
    :cond_cb
    return-object v1
.end method

.method public whitelist getFocusedId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getRequestId()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    return v0
.end method

.method public whitelist getStructure()Landroid/app/assist/AssistStructure;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillContext [reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focusedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 235
    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    return-void
.end method
