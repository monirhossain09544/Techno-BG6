.class Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
.super Ljava/lang/Object;
.source "IntentForwarderActivity.java"

# interfaces
.implements Lcom/android/internal/app/IntentForwarderActivity$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IntentForwarderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectorImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/IntentForwarderActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$1RF_hSzmfhpEKlljiRG2XBZvV8I(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->lambda$resolveActivityAsUser$1(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$tx8nRpKSwdvZTT4p7kYsOBWXhoM(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->lambda$resolveActivityAsUser$0(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 728
    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    return-void
.end method

.method private synthetic blacklist lambda$resolveActivityAsUser$0(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 6

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$resolveActivityAsUser$1(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 5

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 769
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 732
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 742
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public blacklist isDeviceProvisioned()Z
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist showToast(Ljava/lang/String;I)V
    .registers 4

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 765
    return-void
.end method
