.class public final Landroid/service/dreams/DreamService$DreamMetadata;
.super Ljava/lang/Object;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamMetadata"
.end annotation


# instance fields
.field public final blacklist dreamCategory:I

.field public final blacklist previewImage:Landroid/graphics/drawable/Drawable;

.field public final blacklist settingsActivity:Landroid/content/ComponentName;

.field public final blacklist showComplications:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;ZI)V
    .registers 5

    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamMetadata;->settingsActivity:Landroid/content/ComponentName;

    .line 2022
    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamMetadata;->previewImage:Landroid/graphics/drawable/Drawable;

    .line 2023
    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    .line 2024
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/controls/flags/Flags;->homePanelDream()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2025
    iput p4, p0, Landroid/service/dreams/DreamService$DreamMetadata;->dreamCategory:I

    goto :goto_15

    .line 2027
    :cond_12
    const/4 p1, 0x0

    iput p1, p0, Landroid/service/dreams/DreamService$DreamMetadata;->dreamCategory:I

    .line 2029
    :goto_15
    return-void
.end method
