.class public Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialSmsMsg"
.end annotation


# instance fields
.field public greylist-max-o msgCount:I

.field public greylist-max-o msgIndType:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 158
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 159
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 160
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 161
    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    iget v3, p1, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    iget p1, p1, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    .line 159
    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 167
    iget v0, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
