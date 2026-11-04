.class public final Landroid/os/SystemProperties$Handle;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handle"
.end annotation


# instance fields
.field private final blacklist mNativeHandle:J


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 3

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-wide p1, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    .line 395
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/os/SystemProperties-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/SystemProperties$Handle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/lang/String;
    .registers 3

    .line 369
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->-$$Nest$smnative_get(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoolean(Z)Z
    .registers 4

    .line 390
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/os/SystemProperties;->-$$Nest$smnative_get_boolean(JZ)Z

    move-result p1

    return p1
.end method

.method public blacklist getInt(I)I
    .registers 4

    .line 376
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/os/SystemProperties;->-$$Nest$smnative_get_int(JI)I

    move-result p1

    return p1
.end method

.method public blacklist getLong(J)J
    .registers 5

    .line 383
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/SystemProperties;->-$$Nest$smnative_get_long(JJ)J

    move-result-wide p1

    return-wide p1
.end method
