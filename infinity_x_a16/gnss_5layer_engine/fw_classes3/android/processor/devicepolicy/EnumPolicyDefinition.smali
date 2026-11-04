.class public interface abstract annotation Landroid/processor/devicepolicy/EnumPolicyDefinition;
.super Ljava/lang/Object;
.source "EnumPolicyDefinition.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# virtual methods
.method public abstract blacklist base()Landroid/processor/devicepolicy/PolicyDefinition;
.end method

.method public abstract blacklist defaultValue()I
.end method

.method public abstract blacklist intDef()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
