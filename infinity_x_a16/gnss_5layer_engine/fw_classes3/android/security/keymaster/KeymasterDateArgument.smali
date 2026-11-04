.class Landroid/security/keymaster/KeymasterDateArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterDateArgument.java"


# instance fields
.field public final blacklist date:Ljava/util/Date;


# direct methods
.method public constructor greylist-max-r <init>(ILandroid/os/Parcel;)V
    .registers 5

    .line 44
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 45
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/Date;)V
    .registers 5

    .line 32
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    .line 33
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 37
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad date tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :pswitch_23
    nop

    .line 39
    iput-object p2, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    .line 40
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x60000000
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public blacklist writeValue(Landroid/os/Parcel;)V
    .registers 4

    .line 50
    iget-object v0, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    return-void
.end method
