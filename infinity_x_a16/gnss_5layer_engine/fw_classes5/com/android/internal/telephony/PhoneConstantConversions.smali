.class public Lcom/android/internal/telephony/PhoneConstantConversions;
.super Ljava/lang/Object;
.source "PhoneConstantConversions.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .registers 2

    .line 29
    sget-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_12

    .line 35
    const/4 p0, 0x0

    return p0

    .line 33
    :pswitch_d
    const/4 p0, 0x2

    return p0

    .line 31
    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    .line 44
    packed-switch p0, :pswitch_data_c

    .line 50
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0

    .line 48
    :pswitch_6
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0

    .line 46
    :pswitch_9
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .registers 2

    .line 59
    sget-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_16

    .line 69
    const/4 p0, 0x0

    return p0

    .line 67
    :pswitch_d
    const/4 p0, 0x4

    return p0

    .line 65
    :pswitch_f
    const/4 p0, 0x3

    return p0

    .line 63
    :pswitch_11
    const/4 p0, 0x2

    return p0

    .line 61
    :pswitch_13
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_12

    .line 88
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 86
    :pswitch_6
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 84
    :pswitch_9
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 82
    :pswitch_c
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    .line 80
    :pswitch_f
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
