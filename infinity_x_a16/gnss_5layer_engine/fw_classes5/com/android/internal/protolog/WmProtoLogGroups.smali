.class public final enum Lcom/android/internal/protolog/WmProtoLogGroups;
.super Ljava/lang/Enum;
.source "WmProtoLogGroups.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/WmProtoLogGroups$Consts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/WmProtoLogGroups;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_TASKS_LAUNCH_PARAMS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

.field public static final enum blacklist WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;


# instance fields
.field private final blacklist mEnabled:Z

.field private volatile blacklist mLogToLogcat:Z

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/protolog/WmProtoLogGroups;
    .registers 45

    .line 28
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v16, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS_LAUNCH_PARAMS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v17, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v18, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v19, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v20, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v21, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v22, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v23, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v24, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v25, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v26, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v27, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v28, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v29, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v30, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v31, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v32, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v33, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v34, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v35, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v36, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v37, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v38, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v39, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v40, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v41, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v42, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v43, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v44, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array/range {v1 .. v44}, [Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 29
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x1

    const-string v5, "WindowManager"

    const-string v1, "WM_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 30
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v2, "WM_DEBUG_ORIENTATION"

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 31
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x1

    const-string v7, "WindowManager"

    const-string v3, "WM_DEBUG_ORIENTATION_CHANGE"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 32
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v4, "WM_DEBUG_FOCUS_LIGHT"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 33
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v5, "WM_DEBUG_BOOT"

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 34
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v6, "WM_DEBUG_RESIZE"

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 35
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v7, "WM_DEBUG_ADD_REMOVE"

    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 36
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    const-string v5, "WindowManager"

    const-string v1, "WM_DEBUG_CONFIGURATION"

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 37
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v2, "WM_DEBUG_SWITCH"

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 38
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v3, "WM_DEBUG_CONTAINERS"

    const/16 v4, 0x9

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 39
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v4, "WM_DEBUG_FOCUS"

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 40
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v5, "WM_DEBUG_IMMERSIVE"

    const/16 v6, 0xb

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 41
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v6, "WM_DEBUG_LOCKTASK"

    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 42
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v7, "WM_DEBUG_STATES"

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 43
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    const-string v5, "WindowManager"

    const-string v1, "WM_DEBUG_TASKS"

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 45
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v2, "WM_DEBUG_TASKS_LAUNCH_PARAMS"

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS_LAUNCH_PARAMS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 46
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v3, "WM_DEBUG_STARTING_WINDOW"

    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 47
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v4, "WM_SHOW_TRANSACTIONS"

    const/16 v5, 0x11

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 48
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v5, "WM_SHOW_SURFACE_ALLOC"

    const/16 v6, 0x12

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 49
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v6, "WM_DEBUG_APP_TRANSITIONS"

    const/16 v7, 0x13

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 50
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v7, "WM_DEBUG_ANIM"

    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 51
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    const-string v5, "WindowManager"

    const-string v1, "WM_DEBUG_APP_TRANSITIONS_ANIM"

    const/16 v2, 0x15

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 52
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v2, "WM_DEBUG_RECENTS_ANIMATIONS"

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 53
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v3, "WM_DEBUG_DRAW"

    const/16 v4, 0x17

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 54
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v4, "WM_DEBUG_REMOTE_ANIMATIONS"

    const/16 v5, 0x18

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 55
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v5, "WM_DEBUG_SCREEN_ON"

    const/16 v6, 0x19

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 56
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v6, "WM_DEBUG_KEEP_SCREEN_ON"

    const/16 v7, 0x1a

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 57
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x1

    const-string v11, "WindowManager"

    const-string v7, "WM_DEBUG_SLEEP_TOKEN"

    const/16 v8, 0x1b

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 58
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    const-string v5, "WindowManager"

    const-string v1, "WM_DEBUG_WINDOW_MOVEMENT"

    const/16 v2, 0x1c

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 59
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v2, "WM_DEBUG_IME"

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 60
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    const-string v3, "WM_DEBUG_WINDOW_ORGANIZER"

    const/16 v4, 0x1e

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 61
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x0

    const-string v8, "WindowManager"

    const-string v4, "WM_DEBUG_SYNC_ENGINE"

    const/16 v5, 0x1f

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 62
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v5, "WM_DEBUG_WINDOW_TRANSITIONS"

    const/16 v6, 0x20

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 63
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x1

    const-string v10, "WindowManager"

    const-string v6, "WM_DEBUG_WINDOW_TRANSITIONS_MIN"

    const/16 v7, 0x21

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 64
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v7, "WM_DEBUG_WINDOW_INSETS"

    const/16 v8, 0x22

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 65
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x1

    const-string v5, "WindowManager"

    const-string v1, "WM_DEBUG_CONTENT_RECORDING"

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 66
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManager"

    const-string v2, "WM_DEBUG_WALLPAPER"

    const/16 v3, 0x24

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 67
    new-instance v2, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v6, 0x1

    const-string v7, "CoreBackPreview"

    const-string v3, "WM_DEBUG_BACK_PREVIEW"

    const/16 v4, 0x25

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 68
    new-instance v3, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v7, 0x1

    const-string v8, "WindowManager"

    const-string v4, "WM_DEBUG_DREAM"

    const/16 v5, 0x26

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 70
    new-instance v4, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v8, 0x0

    const-string v9, "WindowManager"

    const-string v5, "WM_DEBUG_DIMMER"

    const/16 v6, 0x27

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 71
    new-instance v5, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v9, 0x0

    const-string v10, "WindowManager"

    const-string v6, "WM_DEBUG_TPL"

    const/16 v7, 0x28

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 72
    new-instance v6, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v10, 0x0

    const-string v11, "WindowManager"

    const-string v7, "WM_DEBUG_EMBEDDED_WINDOWS"

    const/16 v8, 0x29

    const/4 v9, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 73
    new-instance v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    const-string v5, "WindowManager"

    const-string v1, "WM_DEBUG_PRESENTATION"

    const/16 v2, 0x2a

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 74
    new-instance v1, Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    const-string v6, "WindowManagerProtoLogTest"

    const-string v2, "TEST_GROUP"

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/WmProtoLogGroups;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    .line 28
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->$values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->$VALUES:[Lcom/android/internal/protolog/WmProtoLogGroups;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-boolean p3, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mEnabled:Z

    .line 89
    iput-boolean p4, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    .line 90
    iput-object p5, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mTag:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/WmProtoLogGroups;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/protolog/WmProtoLogGroups;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/WmProtoLogGroups;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->$VALUES:[Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/WmProtoLogGroups;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/WmProtoLogGroups;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 3

    .line 115
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups$Consts;->-$$Nest$sfgetSTART_ID()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/protolog/WmProtoLogGroups;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mEnabled:Z

    return v0
.end method

.method public blacklist isLogToLogcat()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    return v0
.end method

.method public blacklist setLogToLogcat(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/android/internal/protolog/WmProtoLogGroups;->mLogToLogcat:Z

    .line 111
    return-void
.end method
