.class Landroid/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method constructor blacklist <init>(Landroid/preference/MultiSelectListPreference;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;IZ)V
    .registers 6

    .line 190
    if-eqz p3, :cond_23

    .line 191
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V

    goto :goto_43

    .line 193
    :cond_23
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V

    .line 195
    :goto_43
    return-void
.end method
