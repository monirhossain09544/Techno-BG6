.class public abstract Landroid/service/autofill/InlineSuggestionRenderService;
.super Landroid/app/Service;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;,
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.InlineSuggestionRenderService"

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRenderService"


# instance fields
.field private final blacklist mActiveInlineSuggestions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveInlineSuggestions(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroySuggestionViews(Landroid/service/autofill/InlineSuggestionRenderService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService;->handleDestroySuggestionViews(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetInlineSuggestionsRendererInfo(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRenderSuggestion(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/InlineSuggestionRenderService;->handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/InlineSuggestionRenderService$1;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-void
.end method

.method private blacklist handleDestroySuggestionViews(II)V
    .registers 8

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDestroySuggestionViews called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 227
    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p1, :cond_61

    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v3

    if-ne v3, p2, :cond_61

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    .line 232
    :cond_61
    goto :goto_30

    .line 233
    :cond_62
    return-void
.end method

.method private blacklist handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .registers 3

    .line 219
    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRenderService;->onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 221
    return-void
.end method

.method private blacklist handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 26

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v0, p5

    const-string v8, "InlineSuggestionRenderService"

    if-nez v0, :cond_19

    .line 137
    :try_start_e
    invoke-interface {v7}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 140
    goto :goto_18

    .line 138
    :catch_12
    move-exception v0

    .line 139
    const-string v0, "RemoteException calling onError()"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_18
    return-void

    .line 145
    :cond_19
    move/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 147
    const/4 v9, 0x0

    move-object/from16 v2, p2

    :try_start_21
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/autofill/InlineSuggestionRenderService;->onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;

    move-result-object v5

    .line 148
    if-nez v5, :cond_3a

    .line 149
    const-string v0, "ExtServices failed to render the inline suggestion view."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_e8

    .line 151
    :try_start_2c
    invoke-interface {v7}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_e8

    .line 154
    goto :goto_36

    .line 152
    :catch_30
    move-exception v0

    .line 153
    :try_start_31
    const-string v0, "Null suggestion view returned by renderer"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_e8

    .line 214
    :goto_36
    invoke-virtual {v1, v9}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 155
    return-void

    .line 157
    :cond_3a
    :try_start_3a
    iput-object v7, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 158
    nop

    .line 159
    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v6

    .line 160
    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v2

    .line 158
    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService;->measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "width="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", height="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", measuredSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v3, Landroid/service/autofill/InlineSuggestionRoot;

    invoke-direct {v3, v1, v7}, Landroid/service/autofill/InlineSuggestionRoot;-><init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    .line 164
    invoke-virtual {v3, v2}, Landroid/service/autofill/InlineSuggestionRoot;->addView(Landroid/view/View;)V

    .line 165
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v11

    .line 166
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, -0x2

    const/4 v13, 0x2

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 169
    new-instance v4, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/service/autofill/InlineSuggestionRenderService;->getDisplay()Landroid/view/Display;

    move-result-object v5

    new-instance v11, Landroid/window/InputTransferToken;

    invoke-direct {v11, v0}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {v4, v1, v5, v11, v8}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4, v3, v10}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    invoke-virtual {v2, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 176
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    nop

    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    .line 185
    new-instance v3, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v7}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 196
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    move/from16 v5, p8

    move-object v2, v4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/view/SurfaceControlViewHost;Landroid/os/Handler;II)V

    .line 198
    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v7, v0, v2, v6}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e3
    .catchall {:try_start_3a .. :try_end_e3} :catchall_e8

    .line 214
    invoke-virtual {v1, v9}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_e8
    move-exception v0

    invoke-virtual {v1, v9}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    .line 215
    throw v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)V
    .registers 2

    .line 178
    :try_start_0
    invoke-interface {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onClick()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 181
    goto :goto_c

    .line 179
    :catch_4
    move-exception p0

    .line 180
    const-string p0, "InlineSuggestionRenderService"

    const-string p1, "RemoteException calling onClick()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$1(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)Z
    .registers 3

    .line 186
    if-eqz p0, :cond_5

    .line 187
    invoke-interface {p0, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 190
    :cond_5
    :try_start_5
    invoke-interface {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onLongClick()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 193
    goto :goto_11

    .line 191
    :catch_9
    move-exception p0

    .line 192
    const-string p0, "InlineSuggestionRenderService"

    const-string p1, "RemoteException calling onLongClick()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$2(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V
    .registers 5

    .line 206
    :try_start_0
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;

    invoke-direct {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V

    .line 207
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    .line 208
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 206
    invoke-interface {p0, v0, p1, p2, p3}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 211
    goto :goto_1d

    .line 209
    :catch_15
    move-exception p0

    .line 210
    const-string p0, "InlineSuggestionRenderService"

    const-string p1, "RemoteException calling onContent()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_1d
    return-void
.end method

.method private blacklist measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .registers 9

    .line 109
    const/4 v0, -0x2

    if-eq p2, v0, :cond_b

    if-eq p3, v0, :cond_b

    .line 111
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 114
    :cond_b
    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_1a

    .line 115
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1e

    .line 118
    :cond_1a
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 121
    :goto_1e
    if-ne p3, v0, :cond_29

    .line 122
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    goto :goto_2d

    .line 125
    :cond_29
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 127
    :goto_2d
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 128
    new-instance p2, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/util/Size;-><init>(II)V

    .line 128
    return-object p2
.end method


# virtual methods
.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mActiveInlineSuggestions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    .line 330
    invoke-static {p3}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v0, "ui: [%s] - [%d]  [%d]\n"

    invoke-virtual {p2, v0, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 331
    goto :goto_2a

    .line 332
    :cond_51
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 337
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 338
    const-string v0, "android.service.autofill.InlineSuggestionRenderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 339
    new-instance p1, Landroid/service/autofill/InlineSuggestionRenderService$2;

    invoke-direct {p1, p0}, Landroid/service/autofill/InlineSuggestionRenderService$2;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;)V

    .line 363
    invoke-virtual {p1}, Landroid/service/autofill/InlineSuggestionRenderService$2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 339
    return-object p1

    .line 366
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.autofill.InlineSuggestionRenderService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InlineSuggestionRenderService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;
    .registers 2

    .line 391
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;
    .registers 4

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service implementation ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not implement onRenderSuggestion()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InlineSuggestionRenderService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist startIntentSender(Landroid/content/IntentSender;)V
    .registers 3

    .line 377
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-nez v0, :cond_5

    return-void

    .line 379
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-interface {v0, p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onStartIntentSender(Landroid/content/IntentSender;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 382
    goto :goto_f

    .line 380
    :catch_b
    move-exception p1

    .line 381
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 383
    :goto_f
    return-void
.end method
