.class public Landroid/os/PermissionEnforcer;
.super Ljava/lang/Object;
.source "PermissionEnforcer.java"


# static fields
.field private static final blacklist ACCESS_DENIED:Ljava/lang/String; = "Access denied, requires: "


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method private blacklist anyAppOps([Ljava/lang/String;)Z
    .registers 7

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_13

    aget-object v3, p1, v2

    .line 125
    invoke-static {v3}, Landroid/os/PermissionEnforcer;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    .line 126
    const/4 p1, 0x1

    return p1

    .line 124
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 129
    :cond_13
    return v1
.end method

.method public static blacklist fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;
    .registers 2

    .line 215
    const-string/jumbo v0, "permission_enforcer"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PermissionEnforcer;

    return-object p0
.end method

.method private static blacklist permissionToOpCode(Ljava/lang/String;)I
    .registers 1

    .line 116
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist permissionToOpCode$ravenwood(Ljava/lang/String;)I
    .registers 1

    .line 120
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected blacklist checkPermission(Ljava/lang/String;II)I
    .registers 5

    .line 107
    iget-object v0, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_a

    .line 108
    const/4 p1, 0x0

    return p1

    .line 110
    :cond_a
    const/4 p1, 0x2

    return p1
.end method

.method protected blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 6

    .line 98
    iget-object v0, p0, Landroid/os/PermissionEnforcer;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-static {v0, p1, v1, p2, v2}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist enforcePermission(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 143
    new-instance p2, Landroid/content/AttributionSource;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p1, p2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 145
    return-void

    .line 147
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    .line 148
    if-nez p2, :cond_18

    .line 151
    return-void

    .line 149
    :cond_18
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Access denied, requires: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist enforcePermission(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p2

    .line 135
    if-nez p2, :cond_7

    .line 138
    return-void

    .line 136
    :cond_7
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied, requires: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist enforcePermissionAllOf([Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Landroid/os/PermissionEnforcer;->anyAppOps([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 167
    new-instance p2, Landroid/content/AttributionSource;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 169
    return-void

    .line 171
    :cond_10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_45

    aget-object v2, p1, v1

    .line 172
    invoke-virtual {p0, v2, p2, p3}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 173
    if-nez v2, :cond_1f

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 174
    :cond_1f
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Access denied, requires: allOf={"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 175
    const-string v0, ", "

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p3, "}"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 178
    :cond_45
    return-void
.end method

.method public blacklist enforcePermissionAllOf([Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 155
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_35

    aget-object v2, p1, v1

    .line 156
    invoke-virtual {p0, v2, p2}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v2

    .line 157
    if-nez v2, :cond_f

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 158
    :cond_f
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied, requires: allOf={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    const-string v1, ", "

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 162
    :cond_35
    return-void
.end method

.method public blacklist enforcePermissionAnyOf([Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Landroid/os/PermissionEnforcer;->anyAppOps([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 195
    new-instance p2, Landroid/content/AttributionSource;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1, p2}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 197
    return-void

    .line 199
    :cond_10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    .line 200
    invoke-virtual {p0, v2, p2, p3}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 201
    if-nez v2, :cond_1d

    .line 202
    return-void

    .line 199
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 205
    :cond_20
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Access denied, requires: anyOf={"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 206
    const-string v0, ", "

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p3, "}"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist enforcePermissionAnyOf([Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 182
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 183
    invoke-virtual {p0, v2, p2}, Landroid/os/PermissionEnforcer;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v2

    .line 184
    if-nez v2, :cond_d

    .line 185
    return-void

    .line 182
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    :cond_10
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied, requires: anyOf={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string v1, ", "

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
