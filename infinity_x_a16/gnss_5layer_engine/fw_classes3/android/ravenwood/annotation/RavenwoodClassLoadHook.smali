.class public interface abstract annotation Landroid/ravenwood/annotation/RavenwoodClassLoadHook;
.super Ljava/lang/Object;
.source "RavenwoodClassLoadHook.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/ravenwood/annotation/RavenwoodClassLoadHook;
        comment = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final blacklist GLOBAL_INITIALIZATION_HOOK:Ljava/lang/String; = "android.platform.test.ravenwood.RavenwoodClassLoadHooks.globalInitOnce"


# virtual methods
.method public abstract blacklist comment()Ljava/lang/String;
.end method

.method public abstract blacklist value()Ljava/lang/String;
.end method
