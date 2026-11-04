.class Landroid/preference/GenericInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "GenericInflater.java"

# interfaces
.implements Landroid/preference/GenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/GenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/preference/GenericInflater$Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mF1:Landroid/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mF2:Landroid/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/preference/GenericInflater$Factory;Landroid/preference/GenericInflater$Factory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;",
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF1:Landroid/preference/GenericInflater$Factory;

    .line 97
    iput-object p2, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF2:Landroid/preference/GenericInflater$Factory;

    .line 98
    return-void
.end method


# virtual methods
.method public greylist-max-o onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF1:Landroid/preference/GenericInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_9

    return-object v0

    .line 103
    :cond_9
    iget-object v0, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF2:Landroid/preference/GenericInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
