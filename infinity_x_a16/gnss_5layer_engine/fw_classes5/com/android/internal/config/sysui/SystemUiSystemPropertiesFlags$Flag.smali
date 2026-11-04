.class public final Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flag"
.end annotation


# instance fields
.field public final blacklist mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public final blacklist mDefaultIntValue:I

.field public final blacklist mDefaultStringValue:Ljava/lang/String;

.field public final blacklist mDefaultValue:Z

.field public final blacklist mSysPropKey:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .registers 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    .line 196
    iput p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    .line 197
    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 198
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    .line 199
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .registers 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 206
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    .line 207
    iput p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    .line 208
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .registers 4

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    .line 188
    iput-boolean p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    .line 189
    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 190
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    .line 191
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    .line 192
    return-void
.end method
