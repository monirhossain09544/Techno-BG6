.class Landroid/service/autofill/FillEventHistory$1;
.super Ljava/lang/Object;
.source "FillEventHistory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillEventHistory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillEventHistory;
    .registers 23

    .line 831
    move-object/from16 v0, p1

    new-instance v1, Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 834
    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_9a

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 840
    nop

    .line 841
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v10

    .line 842
    sget-object v11, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 843
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 846
    sget-object v13, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 847
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 849
    if-eqz v13, :cond_54

    .line 850
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 851
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 852
    nop

    :goto_45
    if-ge v3, v14, :cond_52

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto :goto_45

    .line 855
    :cond_52
    move-object v14, v15

    goto :goto_55

    .line 856
    :cond_54
    const/4 v14, 0x0

    .line 858
    :goto_55
    const-class v3, Landroid/view/autofill/AutofillId;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, [Landroid/view/autofill/AutofillId;

    .line 861
    if-eqz v15, :cond_66

    .line 862
    invoke-static {v0}, Landroid/service/autofill/FieldClassification;->readArrayFromParcel(Landroid/os/Parcel;)[Landroid/service/autofill/FieldClassification;

    move-result-object v5

    goto :goto_67

    .line 863
    :cond_66
    const/4 v5, 0x0

    .line 864
    :goto_67
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 866
    nop

    .line 867
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->addLastFocusedIdToFillEventHistory()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 868
    const-class v3, Landroid/view/autofill/AutofillId;

    move/from16 v20, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    move-object/from16 v19, v2

    goto :goto_89

    .line 867
    :cond_84
    move/from16 v20, v2

    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 871
    :goto_89
    move-object/from16 v16, v5

    new-instance v5, Landroid/service/autofill/FillEventHistory$Event;

    invoke-direct/range {v5 .. v19}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;IILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v1, v5}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 834
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v20

    const/4 v3, 0x0

    goto/16 :goto_11

    .line 878
    :cond_9a
    return-object v1
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

    .line 828
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillEventHistory;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/FillEventHistory;
    .registers 2

    .line 883
    new-array p1, p1, [Landroid/service/autofill/FillEventHistory;

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

    .line 828
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory$1;->newArray(I)[Landroid/service/autofill/FillEventHistory;

    move-result-object p1

    return-object p1
.end method
