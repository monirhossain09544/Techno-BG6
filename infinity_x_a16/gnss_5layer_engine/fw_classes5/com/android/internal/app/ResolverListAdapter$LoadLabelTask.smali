.class public Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadLabelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
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

    .line 943
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 944
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 945
    return-void
.end method


# virtual methods
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

    .line 940
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)[Ljava/lang/CharSequence;
    .registers 10

    .line 949
    iget-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 950
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object p1

    .line 952
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fgetmIsAudioCaptureDevice(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4d

    .line 954
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 955
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 957
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 958
    iget-object v5, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 959
    const-string v6, "android.permission.RECORD_AUDIO"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v0, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v0, v3

    .line 965
    :goto_35
    if-nez v0, :cond_4d

    .line 967
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 968
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object p1, p1, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 969
    const v1, 0x1040ac3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 967
    return-object v0

    .line 974
    :cond_4d
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 975
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 976
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 974
    return-object v0
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

    .line 940
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->onPostExecute([Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected blacklist onPostExecute([Ljava/lang/CharSequence;)V
    .registers 4

    .line 982
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayLabel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 983
    return-void

    .line 985
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayLabel(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setExtendedInfo(Ljava/lang/CharSequence;)V

    .line 987
    iget-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 988
    return-void
.end method
