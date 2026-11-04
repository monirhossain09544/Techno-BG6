.class Landroid/preference/MultiCheckPreference$1;
.super Ljava/lang/Object;
.source "MultiCheckPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiCheckPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/MultiCheckPreference;


# direct methods
.method constructor blacklist <init>(Landroid/preference/MultiCheckPreference;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;IZ)V
    .registers 4

    .line 262
    iget-object p1, p0, Landroid/preference/MultiCheckPreference$1;->this$0:Landroid/preference/MultiCheckPreference;

    invoke-static {p1}, Landroid/preference/MultiCheckPreference;->-$$Nest$fgetmSetValues(Landroid/preference/MultiCheckPreference;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    .line 263
    return-void
.end method
