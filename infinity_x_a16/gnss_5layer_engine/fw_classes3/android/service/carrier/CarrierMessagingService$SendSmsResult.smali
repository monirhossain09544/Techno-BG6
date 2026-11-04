.class public final Landroid/service/carrier/CarrierMessagingService$SendSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendSmsResult"
.end annotation


# instance fields
.field private final greylist-max-o mMessageRef:I

.field private final greylist-max-o mSendStatus:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    .line 801
    iput p2, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    .line 802
    return-void
.end method


# virtual methods
.method public whitelist getMessageRef()I
    .registers 2

    .line 810
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    return v0
.end method

.method public whitelist getSendStatus()I
    .registers 2

    .line 819
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    return v0
.end method
