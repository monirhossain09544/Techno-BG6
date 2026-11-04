.class public Lcom/android/internal/compat/CompatibilityChangeInfo;
.super Ljava/lang/Object;
.source "CompatibilityChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChangeId:J

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mDisabled:Z

.field private final blacklist mEnableSinceTargetSdk:I

.field private final blacklist mLoggingOnly:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNoLogging:Z

.field private final blacklist mOverridable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeInfo$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityChangeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-wide v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    .line 96
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 97
    iget v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    .line 98
    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    .line 99
    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    .line 100
    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    .line 101
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 102
    iget-boolean p1, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    iput-boolean p1, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Long;Ljava/lang/String;IIZZZLjava/lang/String;Z)V
    .registers 12

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    .line 77
    iput-object p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 78
    if-lez p3, :cond_12

    .line 81
    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    goto :goto_1a

    .line 82
    :cond_12
    if-lez p4, :cond_17

    .line 83
    iput p4, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    goto :goto_1a

    .line 85
    :cond_17
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    .line 87
    :goto_1a
    iput-boolean p5, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    .line 88
    iput-boolean p6, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    .line 89
    iput-boolean p7, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    .line 90
    iput-object p8, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 91
    iput-boolean p9, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 161
    return v0

    .line 163
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    instance-of v2, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    if-nez v2, :cond_c

    goto :goto_4b

    .line 166
    :cond_c
    check-cast p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 167
    iget-wide v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iget-wide v4, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iget v3, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iget-boolean v3, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iget-boolean v3, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    iget-boolean v3, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-boolean v2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    iget-boolean p1, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    if-ne v2, p1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    .line 167
    :goto_4a
    return v0

    .line 164
    :cond_4b
    :goto_4b
    return v1
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisabled()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    return v0
.end method

.method public blacklist getEnableSinceTargetSdk()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    return v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    return-wide v0
.end method

.method public blacklist getLoggingOnly()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNoLogging()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    return v0
.end method

.method public blacklist getOverridable()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompatibilityChangeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 138
    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 141
    const-string v1, "; enableSinceTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    :cond_36
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 144
    const-string v1, "; disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 147
    const-string v1, "; loggingOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_4c
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getNoLogging()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 150
    const-string v1, "; noLogging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_57
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 153
    const-string v1, "; overridable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_62
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 123
    iget-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    iget-boolean p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    iget-boolean p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mNoLogging:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    iget-object p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    return-void
.end method
