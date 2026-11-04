.class public interface abstract Landroid/service/autofill/ValueFinder;
.super Ljava/lang/Object;
.source "ValueFinder.java"


# virtual methods
.method public blacklist findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 3

    .line 37
    invoke-interface {p0, p1}, Landroid/service/autofill/ValueFinder;->findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    .line 38
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    :cond_d
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public abstract blacklist findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
.end method
