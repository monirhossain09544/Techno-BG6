.class Lcom/android/internal/app/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$fieldId:I

.field final synthetic blacklist val$inflater:Landroid/view/LayoutInflater;

.field final synthetic blacklist val$layoutId:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V
    .registers 8

    .line 218
    iput-object p5, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    iput p7, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 223
    if-nez p2, :cond_17

    .line 224
    iget-object p2, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 225
    iget p3, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 226
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1e

    .line 228
    :cond_17
    nop

    .line 229
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 231
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$1;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 235
    return-object p2
.end method
