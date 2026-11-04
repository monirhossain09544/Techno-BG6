.class final enum Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;
.super Ljava/lang/Enum;
.source "HideDeveloperStatusUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

.field public static final enum blacklist ADD:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

.field public static final enum blacklist REMOVE:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

.field public static final enum blacklist SET:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;
    .registers 3

    .line 22
    sget-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->ADD:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    sget-object v1, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->REMOVE:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    sget-object v2, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->SET:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->ADD:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    .line 24
    new-instance v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    const-string v1, "REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->REMOVE:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    .line 25
    new-instance v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    const-string v1, "SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->SET:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    .line 22
    invoke-static {}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->$values()[Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->$VALUES:[Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->$VALUES:[Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    invoke-virtual {v0}, [Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    return-object v0
.end method
