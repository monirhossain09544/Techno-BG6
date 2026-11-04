.class Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;
.super Landroid/service/wallpaper/IWallpaperService$Stub;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperServiceWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mTarget:Landroid/service/wallpaper/WallpaperService;

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V
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

    .line 2936
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperService$Stub;-><init>()V

    .line 2937
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mTarget:Landroid/service/wallpaper/WallpaperService;

    .line 2938
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    .registers 28

    .line 2945
    move-object/from16 v0, p0

    const-string v1, "WPMS.ServiceWrapper.attach"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2946
    new-instance v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->mTarget:Landroid/service/wallpaper/WallpaperService;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v2 .. v15}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V

    .line 2950
    iget-object v1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 2951
    :try_start_2d
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v0

    move-object/from16 v6, p2

    invoke-virtual {v0, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_3d

    .line 2956
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2957
    return-void

    .line 2952
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public blacklist detach(Landroid/os/IBinder;)V
    .registers 5

    .line 2962
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 2963
    :try_start_7
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2964
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_39

    .line 2965
    if-nez v1, :cond_35

    .line 2966
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine for window token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " already detached"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    return-void

    .line 2972
    :cond_35
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->destroy()V

    .line 2973
    return-void

    .line 2964
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method
