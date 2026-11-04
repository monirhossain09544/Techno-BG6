.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
.super Ljava/lang/Object;
.source "ParsedUsesPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_NEVER_FOR_LOCATION:I = 0x10000


# virtual methods
.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getPurposes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesPermissionFlags()I
.end method
