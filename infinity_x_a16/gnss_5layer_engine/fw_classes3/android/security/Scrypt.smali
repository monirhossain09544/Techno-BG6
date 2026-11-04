.class public Landroid/security/Scrypt;
.super Ljava/lang/Object;
.source "Scrypt.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native greylist-max-o nativeScrypt([B[BIIII)[B
.end method

.method public greylist-max-o scrypt([B[BIIII)[B
    .registers 7

    .line 30
    invoke-virtual/range {p0 .. p6}, Landroid/security/Scrypt;->nativeScrypt([B[BIIII)[B

    move-result-object p1

    return-object p1
.end method
