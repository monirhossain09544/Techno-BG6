.class final Lcom/android/framework/protobuf/Android;
.super Ljava/lang/Object;
.source "Android.java"


# static fields
.field private static blacklist ASSUME_ANDROID:Z

.field private static final blacklist IS_ROBOLECTRIC:Z

.field private static final blacklist MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const-string v0, "libcore.io.Memory"

    invoke-static {v0}, Lcom/android/framework/protobuf/Android;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    .line 20
    sget-boolean v0, Lcom/android/framework/protobuf/Android;->ASSUME_ANDROID:Z

    if-nez v0, :cond_17

    .line 21
    const-string/jumbo v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Lcom/android/framework/protobuf/Android;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    sput-boolean v0, Lcom/android/framework/protobuf/Android;->IS_ROBOLECTRIC:Z

    .line 20
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static blacklist getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 37
    :catchall_5
    move-exception p0

    .line 38
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist getMemoryClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/android/framework/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method static blacklist isOnAndroidDevice()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/android/framework/protobuf/Android;->ASSUME_ANDROID:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/framework/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/framework/protobuf/Android;->IS_ROBOLECTRIC:Z

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
