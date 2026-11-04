.class Lcom/android/internal/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mIsCheckedIndex:I

.field private final blacklist mLabelIndex:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic blacklist val$dialog:Lcom/android/internal/app/AlertController;

.field final synthetic blacklist val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p5, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    iput-object p6, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 1234
    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object p2, p2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1235
    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object p2, p2, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1236
    return-void
.end method


# virtual methods
.method public whitelist bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5

    .line 1240
    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1241
    iget p2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1243
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1244
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1242
    :goto_23
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1245
    return-void
.end method

.method public whitelist newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1249
    iget-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-static {p2}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
