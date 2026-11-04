.class public final Landroid/provider/ContactsContract$Settings$AccountAttributes;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Settings$AccountAttributes$AttributeFlags;
    }
.end annotation


# static fields
.field public static final blacklist ATTRIBUTE_DATA_ORIGIN_CLOUD:J = 0x4L

.field public static final blacklist ATTRIBUTE_DATA_ORIGIN_LOCAL:J = 0x1L

.field public static final blacklist ATTRIBUTE_DATA_ORIGIN_SIM:J = 0x2L

.field public static final blacklist ATTRIBUTE_DATA_TYPE_CUSTOM_DECLARED:J = 0x20L

.field public static final blacklist ATTRIBUTE_SYNC_MODE_DOWN_SYNC:J = 0x10L

.field public static final blacklist ATTRIBUTE_SYNC_MODE_UP_SYNC:J = 0x8L


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 9479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
