.class Landroid/security/keymaster/KeymasterIntArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterIntArgument.java"


# instance fields
.field public final greylist-max-r value:I


# direct methods
.method public constructor greylist-max-r <init>(II)V
    .registers 5

    .line 32
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 33
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 40
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad int tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :sswitch_23
    nop

    .line 42
    iput p2, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    .line 43
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        0x10000000 -> :sswitch_23
        0x20000000 -> :sswitch_23
        0x30000000 -> :sswitch_23
        0x40000000 -> :sswitch_23
    .end sparse-switch
.end method

.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .registers 3

    .line 53
    iget v0, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
