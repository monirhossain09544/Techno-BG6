.class public final Landroid/os/IncidentReportArgs;
.super Ljava/lang/Object;
.source "IncidentReportArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IncidentReportArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAll:Z

.field private final greylist-max-o mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mPrivacyPolicy:I

.field private blacklist mReceiverCls:Ljava/lang/String;

.field private blacklist mReceiverPkg:Ljava/lang/String;

.field private final greylist-max-o mSections:Landroid/util/IntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/os/IncidentReportArgs$1;

    invoke-direct {v0}, Landroid/os/IncidentReportArgs$1;-><init>()V

    sput-object v0, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/IncidentReportArgs;->mPrivacyPolicy:I

    .line 46
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/IncidentReportArgs;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist addHeader([B)V
    .registers 3

    .line 198
    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public whitelist addSection(I)V
    .registers 3

    .line 174
    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    if-le p1, v0, :cond_c

    .line 175
    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 177
    :cond_c
    return-void
.end method

.method public whitelist containsSection(I)Z
    .registers 3

    .line 190
    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAll()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    .line 86
    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_24

    .line 89
    iget-object v3, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 92
    :cond_24
    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    nop

    :goto_2e
    if-ge v1, v0, :cond_3c

    .line 95
    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 98
    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/IncidentReportArgs;->mPrivacyPolicy:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mReceiverPkg:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/IncidentReportArgs;->mReceiverCls:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public whitelist sectionCount()I
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist setAll(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    .line 149
    if-eqz p1, :cond_9

    .line 150
    iget-object p1, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->clear()V

    .line 152
    :cond_9
    return-void
.end method

.method public whitelist setPrivacyPolicy(I)V
    .registers 2

    .line 158
    sparse-switch p1, :sswitch_data_c

    .line 165
    const/16 p1, 0xc8

    iput p1, p0, Landroid/os/IncidentReportArgs;->mPrivacyPolicy:I

    goto :goto_b

    .line 162
    :sswitch_8
    iput p1, p0, Landroid/os/IncidentReportArgs;->mPrivacyPolicy:I

    .line 163
    nop

    .line 167
    :goto_b
    return-void

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_8
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_8
    .end sparse-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incident("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    iget-boolean v1, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-eqz v1, :cond_11

    .line 124
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 126
    :cond_11
    iget-object v1, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 127
    if-lez v1, :cond_23

    .line 128
    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    :cond_23
    const/4 v2, 0x1

    :goto_24
    if-ge v2, v1, :cond_37

    .line 131
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v3, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 135
    :cond_37
    :goto_37
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, " headers), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, "privacy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/IncidentReportArgs;->mPrivacyPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v1, "receiver pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mReceiverPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, "receiver cls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mReceiverCls:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 62
    iget-boolean p2, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object p2, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, p2, :cond_1e

    .line 67
    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 70
    :cond_1e
    iget-object p2, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    nop

    :goto_28
    if-ge v0, p2, :cond_38

    .line 73
    iget-object v1, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 76
    :cond_38
    iget p2, p0, Landroid/os/IncidentReportArgs;->mPrivacyPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object p2, p0, Landroid/os/IncidentReportArgs;->mReceiverPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Landroid/os/IncidentReportArgs;->mReceiverCls:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
