.class Landroid/service/autofill/SaveInfo$1;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/SaveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;
    .registers 9

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    const-class v1, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 912
    if-eqz v1, :cond_15

    .line 913
    new-instance v3, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v3, v0, v1}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I[Landroid/view/autofill/AutofillId;)V

    goto :goto_1a

    .line 914
    :cond_15
    new-instance v3, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I)V

    .line 915
    :goto_1a
    const-class v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    .line 916
    if-eqz v0, :cond_27

    .line 917
    invoke-virtual {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;->setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 920
    :cond_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-class v1, Landroid/content/IntentSender;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    invoke-virtual {v3, v0, v1}, Landroid/service/autofill/SaveInfo$Builder;->setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;->setPositiveAction(I)Landroid/service/autofill/SaveInfo$Builder;

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;

    .line 923
    const-class v0, Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/CustomDescription;

    .line 924
    if-eqz v0, :cond_51

    .line 925
    invoke-virtual {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;->setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;

    .line 927
    :cond_51
    const-class v0, Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InternalValidator;

    .line 928
    if-eqz v0, :cond_5e

    .line 929
    invoke-virtual {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;->setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;

    .line 931
    :cond_5e
    const-class v0, Landroid/service/autofill/InternalSanitizer;

    .line 932
    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalSanitizer;

    .line 933
    if-eqz v0, :cond_7c

    .line 934
    array-length v1, v0

    .line 935
    const/4 v4, 0x0

    :goto_6a
    if-ge v4, v1, :cond_7c

    .line 936
    const-class v5, Landroid/view/autofill/AutofillId;

    .line 937
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/autofill/AutofillId;

    .line 938
    aget-object v6, v0, v4

    invoke-virtual {v3, v6, v5}, Landroid/service/autofill/SaveInfo$Builder;->addSanitizer(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 935
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 941
    :cond_7c
    const-class v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 942
    if-eqz v0, :cond_89

    .line 943
    invoke-virtual {v3, v0}, Landroid/service/autofill/SaveInfo$Builder;->setTriggerId(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 945
    :cond_89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/service/autofill/SaveInfo$Builder;->setFlags(I)Landroid/service/autofill/SaveInfo$Builder;

    .line 946
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo$Builder;->build()Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
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

    .line 903
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/SaveInfo;
    .registers 2

    .line 951
    new-array p1, p1, [Landroid/service/autofill/SaveInfo;

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

    .line 903
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->newArray(I)[Landroid/service/autofill/SaveInfo;

    move-result-object p1

    return-object p1
.end method
