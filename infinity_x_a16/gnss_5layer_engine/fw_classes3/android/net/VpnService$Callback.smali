.class Landroid/net/VpnService$Callback;
.super Landroid/os/Binder;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/VpnService;


# direct methods
.method private constructor blacklist <init>(Landroid/net/VpnService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 445
    iput-object p1, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/VpnService;Landroid/net/VpnService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;)V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 448
    const p2, 0xffffff

    if-ne p1, p2, :cond_c

    .line 449
    iget-object p1, p0, Landroid/net/VpnService$Callback;->this$0:Landroid/net/VpnService;

    invoke-virtual {p1}, Landroid/net/VpnService;->onRevoke()V

    .line 450
    const/4 p1, 0x1

    return p1

    .line 452
    :cond_c
    const/4 p1, 0x0

    return p1
.end method
