.class public interface abstract annotation Landroid/ravenwood/annotation/RavenwoodSupported;
.super Ljava/lang/Object;
.source "RavenwoodSupported.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/ravenwood/annotation/RavenwoodSupported;
        bug = 0x0L
        comment = ""
        subclass = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ravenwood/annotation/RavenwoodSupported$RavenwoodProvidingImplementation;,
        Landroid/ravenwood/annotation/RavenwoodSupported$SupportType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist bug()J
.end method

.method public abstract blacklist comment()Ljava/lang/String;
.end method

.method public abstract blacklist subclass()Ljava/lang/String;
.end method

.method public abstract blacklist type()Landroid/ravenwood/annotation/RavenwoodSupported$SupportType;
.end method
