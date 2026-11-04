.class public Lcom/android/internal/app/HiddenNotificationInfo;
.super Ljava/lang/Object;
.source "HiddenNotificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/HiddenNotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist appIcon:Landroid/graphics/drawable/Icon;

.field public final blacklist contentIntent:Landroid/app/PendingIntent;

.field public final blacklist key:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist postTime:J

.field public final blacklist text:Ljava/lang/CharSequence;

.field public final blacklist title:Ljava/lang/CharSequence;

.field public final blacklist userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/android/internal/app/HiddenNotificationInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/HiddenNotificationInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/HiddenNotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->key:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->packageName:Ljava/lang/String;

    .line 58
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->appIcon:Landroid/graphics/drawable/Icon;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->text:Ljava/lang/CharSequence;

    .line 61
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->postTime:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/HiddenNotificationInfo;->userId:I

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;JI)V
    .registers 10

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/app/HiddenNotificationInfo;->key:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/internal/app/HiddenNotificationInfo;->packageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/internal/app/HiddenNotificationInfo;->appIcon:Landroid/graphics/drawable/Icon;

    .line 48
    iput-object p4, p0, Lcom/android/internal/app/HiddenNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 49
    iput-object p5, p0, Lcom/android/internal/app/HiddenNotificationInfo;->text:Ljava/lang/CharSequence;

    .line 50
    iput-object p6, p0, Lcom/android/internal/app/HiddenNotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 51
    iput-wide p7, p0, Lcom/android/internal/app/HiddenNotificationInfo;->postTime:J

    .line 52
    iput p9, p0, Lcom/android/internal/app/HiddenNotificationInfo;->userId:I

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->appIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-wide v0, p0, Lcom/android/internal/app/HiddenNotificationInfo;->postTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget p2, p0, Lcom/android/internal/app/HiddenNotificationInfo;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
