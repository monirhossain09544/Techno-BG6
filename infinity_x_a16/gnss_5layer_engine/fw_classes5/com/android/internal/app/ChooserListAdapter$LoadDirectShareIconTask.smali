.class public Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadDirectShareIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 791
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 792
    iput-object p2, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 793
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;Lcom/android/internal/app/ChooserListAdapter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;-><init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    .line 797
    iget-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->mTargetInfo:Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->loadIcon()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 787
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadIcon()V
    .registers 2

    .line 811
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 812
    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    .line 802
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 803
    iget-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 805
    :cond_b
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 787
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
