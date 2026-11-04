.class final Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;
.super Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.source "AugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/AugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AugmentedAutofillServiceImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;


# direct methods
.method public static synthetic blacklist $r8$lambda$DTL5UeU4SfJz8RSjns_avtK5nlI(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnConnected(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SRXVlttOnKWHDKz1XXtrWvCPM3o(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnDestroyAllFillWindowsRequest(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WTjBWlfB-Ode51JH39k04VhxolM(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnFillRequest(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$adpfhxTumWhYtgvFOS6QCa0rivY(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$mhandleOnDisconnected(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-direct {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService;Landroid/service/autofill/augmented/AugmentedAutofillService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(ZZ)V
    .registers 6

    .line 103
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 103
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public blacklist onDestroyAllFillWindowsRequest()V
    .registers 4

    .line 125
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    .line 126
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 4

    .line 109
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public blacklist onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 14

    .line 118
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 120
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p8

    .line 118
    move-object p7, p6

    move-object p0, v1

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, v2

    invoke-static/range {p0 .. p10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method
