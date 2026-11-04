.class Landroid/security/keymaster/KeymasterLongArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterLongArgument.java"


# instance fields
.field public final greylist-max-r value:J


# direct methods
.method public constructor greylist-max-r <init>(IJ)V
    .registers 5

    .line 32
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 33
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 38
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad long tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 36
    :sswitch_23
    nop

    .line 40
    iput-wide p2, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    .line 41
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        -0x60000000 -> :sswitch_23
        0x50000000 -> :sswitch_23
    .end sparse-switch
.end method

.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .registers 4

    .line 51
    iget-wide v0, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    return-void
.end method
