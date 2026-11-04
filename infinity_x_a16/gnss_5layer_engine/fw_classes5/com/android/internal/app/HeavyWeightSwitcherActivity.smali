.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.super Landroid/app/Activity;
.source "HeavyWeightSwitcherActivity.java"


# static fields
.field public static final blacklist KEY_CUR_APP:Ljava/lang/String; = "cur_app"

.field public static final blacklist KEY_CUR_TASK:Ljava/lang/String; = "cur_task"

.field public static final blacklist KEY_HAS_RESULT:Ljava/lang/String; = "has_result"

.field public static final blacklist KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final blacklist KEY_NEW_APP:Ljava/lang/String; = "new_app"


# instance fields
.field blacklist mCurApp:Ljava/lang/String;

.field blacklist mCurTask:I

.field blacklist mHasResult:Z

.field blacklist mNewApp:Ljava/lang/String;

.field blacklist mStartIntent:Landroid/content/IntentSender;

.field private blacklist mSwitchNewListener:Landroid/view/View$OnClickListener;

.field private blacklist mSwitchOldListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 66
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    const-class v3, Landroid/content/IntentSender;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    iput-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cur_app"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cur_task"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "new_app"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    .line 76
    const v1, 0x109008c

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setContentView(I)V

    .line 78
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    const v6, 0x1040719

    const/4 v7, 0x0

    const v1, 0x1020451

    const v2, 0x1020450

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 80
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    const v6, 0x10406c2

    const v7, 0x10406c3

    const v1, 0x102041f

    const v2, 0x102041d

    const v3, 0x102041e

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 83
    const v1, 0x1020571

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x1020570

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method blacklist setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 94
    if-eqz p2, :cond_b

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_b
    return-void
.end method

.method blacklist setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V
    .registers 12

    .line 101
    nop

    .line 102
    nop

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_20

    .line 105
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p4

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 110
    goto :goto_20

    .line 109
    :catch_1f
    move-exception v2

    .line 113
    :cond_20
    :goto_20
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 114
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    .line 115
    if-eqz p3, :cond_50

    .line 116
    nop

    .line 117
    if-eqz p5, :cond_45

    .line 119
    :try_start_33
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p5
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_43} :catch_44

    .line 123
    goto :goto_45

    .line 122
    :catch_44
    move-exception p1

    .line 125
    :cond_45
    :goto_45
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p7, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    .line 127
    :cond_50
    return-void
.end method

.method blacklist setText(ILjava/lang/CharSequence;)V
    .registers 3

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
