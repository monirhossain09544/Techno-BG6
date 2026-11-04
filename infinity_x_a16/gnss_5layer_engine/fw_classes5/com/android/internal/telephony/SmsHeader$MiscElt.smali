.class public Lcom/android/internal/telephony/SmsHeader$MiscElt;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiscElt"
.end annotation


# instance fields
.field public greylist-max-o data:[B

.field public greylist-max-o id:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 182
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 183
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 184
    iget v2, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    iget v3, p1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object p1, p1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 185
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 184
    :goto_26
    return v0

    .line 182
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 190
    iget v0, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    return v0
.end method
