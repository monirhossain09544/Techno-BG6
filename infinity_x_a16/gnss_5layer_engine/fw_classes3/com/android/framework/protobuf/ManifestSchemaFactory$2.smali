.class synthetic Lcom/android/framework/protobuf/ManifestSchemaFactory$2;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$google$protobuf$ProtoSyntax:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 92
    invoke-static {}, Lcom/android/framework/protobuf/ProtoSyntax;->values()[Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    :try_start_9
    sget-object v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ProtoSyntax;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    return-void
.end method
