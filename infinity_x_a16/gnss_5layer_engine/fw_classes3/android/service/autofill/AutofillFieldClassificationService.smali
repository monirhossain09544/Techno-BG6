.class public abstract Landroid/service/autofill/AutofillFieldClassificationService;
.super Landroid/app/Service;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/AutofillFieldClassificationService$Scores;,
        Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_SCORES:Ljava/lang/String; = "scores"

.field public static final whitelist REQUIRED_ALGORITHM_CREDIT_CARD:Ljava/lang/String; = "CREDIT_CARD"

.field public static final whitelist REQUIRED_ALGORITHM_EDIT_DISTANCE:Ljava/lang/String; = "EDIT_DISTANCE"

.field public static final whitelist REQUIRED_ALGORITHM_EXACT_MATCH:Ljava/lang/String; = "EXACT_MATCH"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.AutofillFieldClassificationService"

.field public static final whitelist SERVICE_META_DATA_KEY_AVAILABLE_ALGORITHMS:Ljava/lang/String; = "android.autofill.field_classification.available_algorithms"

.field public static final whitelist SERVICE_META_DATA_KEY_DEFAULT_ALGORITHM:Ljava/lang/String; = "android.autofill.field_classification.default_algorithm"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillFieldClassificationService"


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mWrapper:Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcalculateScores(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/AutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method private blacklist calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 111
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 110
    move-object v1, p0

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/service/autofill/AutofillFieldClassificationService;->onCalculateScores(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)[[F

    move-result-object p2

    .line 112
    if-eqz p2, :cond_27

    .line 113
    new-instance p3, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>([[FLandroid/service/autofill/AutofillFieldClassificationService-IA;)V

    const-string/jumbo p2, "scores"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    :cond_27
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 133
    iget-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mWrapper:Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;

    return-object p1
.end method

.method public whitelist onCalculateScores(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)[[F
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")[[F"
        }
    .end annotation

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service implementation ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not implement onCalculateScore()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillFieldClassificationService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 128
    new-instance v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService-IA;)V

    iput-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService;->mWrapper:Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;

    .line 129
    return-void
.end method

.method public whitelist onGetScores(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)[[F
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[[F"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service implementation ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not implement onGetScores()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillFieldClassificationService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 p1, 0x0

    return-object p1
.end method
