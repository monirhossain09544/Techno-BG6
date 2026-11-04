.class public interface abstract Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;
.super Ljava/lang/Object;
.source "CustomStatusBarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/CustomStatusBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DarkReceiver"
.end annotation


# virtual methods
.method public abstract blacklist onDarkChanged(Ljava/util/ArrayList;FI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;FI)V"
        }
    .end annotation
.end method

.method public abstract blacklist setFillColors(II)V
.end method
