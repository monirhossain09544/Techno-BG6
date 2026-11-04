.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final blacklist BROWSABLE_APP_TITLE_RES:I = 0x1040b25

.field public static final blacklist BROWSABLE_HOST_APP_TITLE_RES:I = 0x1040b23

.field public static final blacklist BROWSABLE_HOST_TITLE_RES:I = 0x1040b22

.field public static final blacklist BROWSABLE_TITLE_RES:I = 0x1040b24

.field public static final enum blacklist CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final blacklist action:Ljava/lang/String;

.field public final blacklist labelRes:I

.field public final blacklist namedTitleRes:I

.field public final blacklist titleRes:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 8

    .line 287
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 288
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v5, 0x1040b2e

    const v6, 0x1040b2d

    const-string v1, "VIEW"

    const/4 v2, 0x0

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x1040b2c

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 292
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v6, 0x1040b1a

    const v7, 0x1040b19

    const-string v2, "EDIT"

    const/4 v3, 0x1

    const-string v4, "android.intent.action.EDIT"

    const v5, 0x1040b18

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 296
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v7, 0x1040b28

    const v8, 0x1040b27

    const-string v3, "SEND"

    const/4 v4, 0x2

    const-string v5, "android.intent.action.SEND"

    const v6, 0x1040b26

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 300
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v8, 0x1040b2b

    const v9, 0x1040b2a

    const-string v4, "SENDTO"

    const/4 v5, 0x3

    const-string v6, "android.intent.action.SENDTO"

    const v7, 0x1040b29

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 304
    new-instance v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v9, 0x1040b28

    const v10, 0x1040b27

    const-string v5, "SEND_MULTIPLE"

    const/4 v6, 0x4

    const-string v7, "android.intent.action.SEND_MULTIPLE"

    const v8, 0x1040b26

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 308
    new-instance v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v10, 0x1040b21

    const v11, 0x1040b20

    const-string v6, "CAPTURE_IMAGE"

    const/4 v7, 0x5

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    const v9, 0x1040b1f

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 312
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v11, 0x1040b17

    const v12, 0x1040b16

    const-string v7, "DEFAULT"

    const/4 v8, 0x6

    const/4 v9, 0x0

    const v10, 0x1040b15

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 316
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v12, 0x1040b1e

    const v13, 0x1040b1d

    const-string v8, "HOME"

    const/4 v9, 0x7

    const-string v10, "android.intent.action.MAIN"

    const v11, 0x1040b1c

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 287
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 337
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 338
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    .line 339
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    .line 340
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    .line 341
    return-void
.end method

.method public static blacklist forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 6

    .line 344
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 345
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_19

    if-eqz p0, :cond_19

    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 346
    return-object v3

    .line 344
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 349
    :cond_1c
    sget-object p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 287
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 1

    .line 287
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
