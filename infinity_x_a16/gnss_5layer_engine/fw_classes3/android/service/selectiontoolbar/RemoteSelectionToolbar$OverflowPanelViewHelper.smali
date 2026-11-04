.class final Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanelViewHelper"
.end annotation


# instance fields
.field private final blacklist mCalculator:Landroid/view/View;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIconTextSpacing:I

.field private final blacklist mSidePadding:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    .line 1251
    iput p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1253
    const p2, 0x10501a9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mSidePadding:I

    .line 1254
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->createMenuButton(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    .line 1255
    return-void
.end method

.method private blacklist createMenuButton(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Landroid/view/View;
    .registers 5

    .line 1278
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1279
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Z

    move-result v2

    .line 1278
    invoke-static {v0, p1, v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)Landroid/view/View;

    move-result-object p1

    .line 1280
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mSidePadding:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mSidePadding:I

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1281
    return-object p1
.end method

.method private blacklist shouldShowIcon(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Z
    .registers 4

    .line 1285
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1286
    iget p1, p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;->groupId:I

    const v1, 0x1020041

    if-ne p1, v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 1288
    :cond_c
    return v0
.end method


# virtual methods
.method public blacklist calculateWidth(Landroid/view/selectiontoolbar/ToolbarMenuItem;)I
    .registers 5

    .line 1270
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1271
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Z

    move-result v2

    .line 1270
    invoke-static {v0, p1, v1, v2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V

    .line 1272
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1274
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method public blacklist getView(Landroid/view/selectiontoolbar/ToolbarMenuItem;ILandroid/view/View;)Landroid/view/View;
    .registers 6

    .line 1258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    if-eqz p3, :cond_f

    .line 1260
    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1261
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Z

    move-result v1

    .line 1260
    invoke-static {p3, p1, v0, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/selectiontoolbar/ToolbarMenuItem;IZ)V

    goto :goto_13

    .line 1263
    :cond_f
    invoke-direct {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->createMenuButton(Landroid/view/selectiontoolbar/ToolbarMenuItem;)Landroid/view/View;

    move-result-object p3

    .line 1265
    :goto_13
    invoke-virtual {p3, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1266
    return-object p3
.end method
