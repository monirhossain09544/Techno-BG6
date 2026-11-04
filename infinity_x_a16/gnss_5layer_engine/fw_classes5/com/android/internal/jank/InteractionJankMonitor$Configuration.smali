.class public Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCujType:I

.field private final blacklist mDeferMonitor:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSessionName:Ljava/lang/String;

.field private final blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceOnly:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mTimeout:J

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object p0
.end method

.method private constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;)V
    .registers 11

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    .line 847
    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    .line 848
    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    .line 849
    iput-wide p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    .line 850
    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 851
    iput-boolean p6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    .line 852
    if-eqz p7, :cond_1a

    .line 853
    goto :goto_26

    .line 854
    :cond_1a
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p7

    goto :goto_26

    :cond_25
    const/4 p7, 0x0

    :goto_26
    iput-object p7, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    .line 855
    iput-object p8, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 856
    iput-boolean p9, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    .line 857
    if-eqz p10, :cond_31

    .line 858
    iput-object p10, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    goto :goto_68

    .line 859
    :cond_31
    iget-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz p1, :cond_60

    .line 860
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No UIThread provided for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (surface only). Defaulting to app main thread."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    goto :goto_68

    .line 864
    :cond_60
    iget-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    .line 866
    :goto_68
    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->validate()V

    .line 867
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;Lcom/android/internal/jank/InteractionJankMonitor-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;-><init>(ILandroid/view/View;Ljava/lang/String;JZLandroid/content/Context;Landroid/view/SurfaceControl;ZLandroid/os/Handler;)V

    return-void
.end method

.method public static blacklist generateSessionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 872
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 873
    if-nez v0, :cond_1f

    .line 874
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 875
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1f

    .line 876
    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 881
    :cond_1f
    if-nez v0, :cond_2c

    .line 882
    const-string v0, "J<%s::%s>"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_36

    .line 883
    :cond_2c
    const-string p1, "J<%s>"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 881
    :goto_36
    return-object p0
.end method

.method private blacklist validate()V
    .registers 10

    .line 887
    nop

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    .line 891
    nop

    .line 892
    const-string v1, "Invalid tag; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_15

    .line 890
    :cond_14
    move v1, v3

    .line 894
    :goto_15
    iget-wide v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_24

    .line 895
    nop

    .line 896
    const-string v1, "Invalid timeout value; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 898
    :cond_24
    iget-boolean v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v4, :cond_55

    .line 899
    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    if-nez v3, :cond_33

    .line 900
    nop

    .line 901
    const-string v1, "Must pass in a context if only instrument surface; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 903
    :cond_33
    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_46

    .line 904
    :cond_3f
    nop

    .line 905
    const-string v1, "Must pass in a valid surface control if only instrument surface; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 907
    :cond_46
    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_52

    .line 908
    nop

    .line 909
    const-string v1, "Must pass a UI thread handler when only a surface control is provided."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bb

    .line 907
    :cond_52
    move v2, v1

    goto/16 :goto_bb

    .line 914
    :cond_55
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->hasValidView()Z

    move-result v4

    if-nez v4, :cond_ba

    .line 915
    nop

    .line 916
    nop

    .line 917
    nop

    .line 918
    nop

    .line 919
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v1, :cond_81

    .line 920
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    .line 921
    iget-object v4, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    if-eqz v4, :cond_73

    move v4, v2

    goto :goto_74

    :cond_73
    move v4, v3

    .line 922
    :goto_74
    iget-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v5

    if-eqz v5, :cond_7d

    move v3, v2

    :cond_7d
    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_83

    .line 919
    :cond_81
    move v1, v3

    move v4, v1

    .line 924
    :goto_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid view: view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", hasViewRoot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasRenderer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 914
    :cond_ba
    move v2, v1

    .line 929
    :goto_bb
    if-nez v2, :cond_be

    .line 932
    return-void

    .line 930
    :cond_be
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getCujType()I
    .registers 2

    .line 1001
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 979
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mContext:Landroid/content/Context;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 971
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist getPerfettoTrigger()Ljava/lang/String;
    .registers 3

    .line 996
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    .line 997
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 996
    const-string v1, "com.android.telemetry.interaction-jank-monitor-%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSessionName()Ljava/lang/String;
    .registers 2

    .line 983
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatsdInteractionType()I
    .registers 2

    .line 987
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->getStatsdInteractionType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 951
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 959
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    return-object v0
.end method

.method blacklist hasValidView()Z
    .registers 2

    .line 935
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 936
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    .line 937
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 935
    :goto_24
    return v0
.end method

.method public blacklist isSurfaceOnly()Z
    .registers 2

    .line 944
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mSurfaceOnly:Z

    return v0
.end method

.method public blacklist logToStatsd()Z
    .registers 2

    .line 992
    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mCujType:I

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->logToStatsd(I)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldDeferMonitor()Z
    .registers 2

    .line 966
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->mDeferMonitor:Z

    return v0
.end method
