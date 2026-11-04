.class public Lcom/android/internal/policy/KeyInterceptionInfo;
.super Ljava/lang/Object;
.source "KeyInterceptionInfo.java"


# instance fields
.field public final blacklist layoutParamsInputFeatures:I

.field public final blacklist layoutParamsPrivateFlags:I

.field public final blacklist layoutParamsType:I

.field public final blacklist windowOwnerUid:I

.field public final blacklist windowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IIILjava/lang/String;I)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 34
    iput p2, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 35
    iput p3, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsInputFeatures:I

    .line 36
    iput-object p4, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 38
    return-void
.end method
