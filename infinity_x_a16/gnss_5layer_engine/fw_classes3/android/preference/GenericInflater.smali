.class abstract Landroid/preference/GenericInflater;
.super Ljava/lang/Object;
.source "GenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/GenericInflater$Factory;,
        Landroid/preference/GenericInflater$FactoryMerger;,
        Landroid/preference/GenericInflater$Parent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Landroid/preference/GenericInflater$Parent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o mConstructorSignature:[Ljava/lang/Class;

.field private static final greylist-max-o sConstructorMap:Ljava/util/HashMap;


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mConstructorArgs:[Ljava/lang/Object;

.field protected final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultPackage:Ljava/lang/String;

.field private greylist-max-o mFactory:Landroid/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mFactorySet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/GenericInflater;->DEBUG:Z

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater<",
            "TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/GenericInflater;->DEBUG:Z

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 129
    iput-object p2, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    .line 130
    iget-object p1, p1, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    iput-object p1, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    .line 131
    return-void
.end method

.method private final greylist-max-o createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .line 433
    const-string p1, ": Error inflating class "

    :try_start_2
    iget-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_11

    :cond_9
    iget-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    iget-object v2, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    invoke-interface {v0, p2, v2, p3}, Landroid/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    :goto_11
    if-nez v0, :cond_25

    .line 436
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_21

    .line 437
    invoke-virtual {p0, p2, p3}, Landroid/preference/GenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_25

    .line 439
    :cond_21
    invoke-virtual {p0, p2, v1, p3}, Landroid/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0
    :try_end_25
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_25} :catch_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_25} :catch_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    .line 444
    :cond_25
    :goto_25
    return-object v0

    .line 456
    :catch_26
    move-exception v0

    .line 457
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 461
    throw v1

    .line 449
    :catch_49
    move-exception v0

    .line 450
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 454
    throw v1

    .line 446
    :catch_6c
    move-exception p1

    .line 447
    throw p1
.end method

.method private greylist-max-o rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 474
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 475
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_31

    :cond_11
    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    .line 477
    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    .line 478
    goto :goto_4

    .line 481
    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/GenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 482
    goto :goto_4

    .line 488
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-direct {p0, p1, v1, p3}, Landroid/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .line 497
    move-object v2, p2

    check-cast v2, Landroid/preference/GenericInflater$Parent;

    invoke-interface {v2, v1}, Landroid/preference/GenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    .line 502
    invoke-direct {p0, p1, v1, p3}, Landroid/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    .line 506
    goto :goto_4

    .line 508
    :cond_31
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
.end method

.method public final greylist-max-o createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 377
    sget-object v0, Landroid/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 380
    const-string v1, ": Error inflating class "

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    .line 383
    :try_start_d
    iget-object v3, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 384
    if-eqz p2, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_27
    move-object v4, p1

    .line 383
    :goto_28
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 385
    sget-object v4, Landroid/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 387
    sget-object v3, Landroid/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_3a
    iget-object v3, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 391
    aput-object p3, v3, v2

    .line 392
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_42} :catch_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_42} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_42} :catch_43

    return-object p1

    .line 405
    :catch_43
    move-exception p1

    .line 406
    new-instance p2, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 409
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2, p1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 411
    throw p2

    .line 402
    :catch_6e
    move-exception p1

    .line 404
    throw p1

    .line 394
    :catch_70
    move-exception v0

    .line 395
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 398
    if-eqz p2, :cond_97

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_97
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 400
    throw v2
.end method

.method public greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-o getDefaultPackage()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-o getFactory()Landroid/preference/GenericInflater$Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    return-object v0
.end method

.method public greylist-max-o inflate(ILandroid/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    .line 228
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/preference/GenericInflater;->inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Landroid/preference/GenericInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 271
    :try_start_c
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 273
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 271
    return-object p2

    .line 273
    :catchall_14
    move-exception p2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 274
    throw p2
.end method

.method public greylist-max-o inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    .line 248
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 302
    iget-object v2, p0, Landroid/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/preference/GenericInflater;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_86

    .line 303
    nop

    .line 308
    :goto_f
    :try_start_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1a

    goto :goto_f

    .line 313
    :cond_1a
    if-ne v2, v3, :cond_30

    .line 325
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Landroid/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    .line 328
    check-cast v2, Landroid/preference/GenericInflater$Parent;

    invoke-virtual {p0, p2, p3, v2}, Landroid/preference/GenericInflater;->onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;

    move-result-object p2

    .line 334
    invoke-direct {p0, p1, p2, v1}, Landroid/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_2d
    .catch Landroid/view/InflateException; {:try_start_f .. :try_end_2d} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_2d} :catch_76
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2d} :catch_4d
    .catchall {:try_start_f .. :try_end_2d} :catchall_86

    .line 352
    nop

    .line 354
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_86

    return-object p2

    .line 314
    :cond_30
    :try_start_30
    new-instance p2, Landroid/view/InflateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ": No start tag found!"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4d
    .catch Landroid/view/InflateException; {:try_start_30 .. :try_end_4d} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_4d} :catch_76
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4d} :catch_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_86

    .line 346
    :catch_4d
    move-exception p2

    .line 347
    :try_start_4e
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 349
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p3, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 351
    throw p3

    .line 342
    :catch_76
    move-exception p1

    .line 343
    new-instance p2, Landroid/view/InflateException;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2, p1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 345
    throw p2

    .line 339
    :catch_84
    move-exception p1

    .line 340
    throw p1

    .line 355
    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_4e .. :try_end_88} :catchall_86

    throw p1
.end method

.method protected greylist-max-o onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 523
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Landroid/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    .line 527
    return-object p3
.end method

.method public greylist-max-o setDefaultPackage(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Landroid/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public greylist-max-o setFactory(Landroid/preference/GenericInflater$Factory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;)V"
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Landroid/preference/GenericInflater;->mFactorySet:Z

    if-nez v0, :cond_22

    .line 204
    if-eqz p1, :cond_1a

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/GenericInflater;->mFactorySet:Z

    .line 208
    iget-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    if-nez v0, :cond_10

    .line 209
    iput-object p1, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    goto :goto_19

    .line 211
    :cond_10
    new-instance v0, Landroid/preference/GenericInflater$FactoryMerger;

    iget-object v1, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    invoke-direct {v0, p1, v1}, Landroid/preference/GenericInflater$FactoryMerger;-><init>(Landroid/preference/GenericInflater$Factory;Landroid/preference/GenericInflater$Factory;)V

    iput-object v0, p0, Landroid/preference/GenericInflater;->mFactory:Landroid/preference/GenericInflater$Factory;

    .line 213
    :goto_19
    return-void

    .line 205
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Given factory can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A factory has already been set on this inflater"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
