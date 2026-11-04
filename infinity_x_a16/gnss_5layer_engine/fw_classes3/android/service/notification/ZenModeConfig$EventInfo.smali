.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final greylist-max-o REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final greylist-max-o REPLY_YES:I = 0x2

.field public static final greylist-max-o REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public blacklist calName:Ljava/lang/String;

.field public blacklist calendarId:Ljava/lang/Long;

.field public greylist-max-o reply:I

.field public greylist-max-o userId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    const/16 v0, -0x2710

    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    return-void
.end method

.method public static greylist-max-o resolveUserId(I)I
    .registers 2

    .line 2058
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    :cond_8
    return p0
.end method


# virtual methods
.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 3

    .line 2049
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 2050
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 2051
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2052
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2053
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2054
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2040
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2041
    :cond_6
    check-cast p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 2042
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2043
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2045
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    nop

    .line 2042
    :goto_2b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 2035
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget v3, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
