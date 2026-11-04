.class public final Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/framework/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PMNCreator"


# instance fields
.field private final blacklist mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method static blacklist writeToParcel(Ljava/lang/Class;Lcom/android/framework/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 56
    const-string v0, "Exception trying to create proto from parcel"

    const-string v1, "PMNCreator"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 59
    nop

    .line 63
    nop

    .line 64
    const/4 v3, 0x0

    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_30} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_30} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_30} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_30} :catch_51
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_30} :catch_4c
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_f .. :try_end_30} :catch_46

    .line 68
    :try_start_30
    invoke-static {v2, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_33} :catch_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_33} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_33} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_33} :catch_3a
    .catch Ljava/lang/InstantiationException; {:try_start_30 .. :try_end_33} :catch_37
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_30 .. :try_end_33} :catch_34

    .line 81
    goto :goto_65

    .line 79
    :catch_34
    move-exception p1

    move-object v3, v2

    goto :goto_47

    .line 77
    :catch_37
    move-exception p1

    move-object v3, v2

    goto :goto_4d

    .line 75
    :catch_3a
    move-exception p1

    move-object v3, v2

    goto :goto_52

    .line 73
    :catch_3d
    move-exception p1

    move-object v3, v2

    goto :goto_57

    .line 71
    :catch_40
    move-exception p1

    move-object v3, v2

    goto :goto_5c

    .line 69
    :catch_43
    move-exception p1

    move-object v3, v2

    goto :goto_61

    .line 79
    :catch_46
    move-exception p1

    .line 80
    :goto_47
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    goto :goto_65

    .line 77
    :catch_4c
    move-exception p1

    .line 78
    :goto_4d
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 75
    :catch_51
    move-exception p1

    .line 76
    :goto_52
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 73
    :catch_56
    move-exception p1

    .line 74
    :goto_57
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 71
    :catch_5b
    move-exception p1

    .line 72
    :goto_5c
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 69
    :catch_60
    move-exception p1

    .line 70
    :goto_61
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_64
    move-object v2, v3

    .line 83
    :goto_65
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/framework/protobuf/nano/MessageNano;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p1

    return-object p1
.end method
