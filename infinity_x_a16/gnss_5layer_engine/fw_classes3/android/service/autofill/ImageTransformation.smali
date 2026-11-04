.class public final Landroid/service/autofill/ImageTransformation;
.super Landroid/service/autofill/InternalTransformation;
.source "ImageTransformation.java"

# interfaces
.implements Landroid/service/autofill/Transformation;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/ImageTransformation$Builder;,
        Landroid/service/autofill/ImageTransformation$Option;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/ImageTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImageTransformation"


# instance fields
.field private final greylist-max-o mId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/ImageTransformation$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 246
    new-instance v0, Landroid/service/autofill/ImageTransformation$1;

    invoke-direct {v0}, Landroid/service/autofill/ImageTransformation$1;-><init>()V

    sput-object v0, Landroid/service/autofill/ImageTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/ImageTransformation$Builder;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroid/service/autofill/InternalTransformation;-><init>()V

    .line 67
    invoke-static {p1}, Landroid/service/autofill/ImageTransformation$Builder;->-$$Nest$fgetmId(Landroid/service/autofill/ImageTransformation$Builder;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation;->mId:Landroid/view/autofill/AutofillId;

    .line 68
    invoke-static {p1}, Landroid/service/autofill/ImageTransformation$Builder;->-$$Nest$fgetmOptions(Landroid/service/autofill/ImageTransformation$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/service/autofill/ImageTransformation;->mOptions:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/ImageTransformation$Builder;Landroid/service/autofill/ImageTransformation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/ImageTransformation;-><init>(Landroid/service/autofill/ImageTransformation$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const-string v0, ": "

    iget-object v1, p0, Landroid/service/autofill/ImageTransformation;->mId:Landroid/view/autofill/AutofillId;

    invoke-interface {p1, v1}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object p1

    .line 77
    const-string v1, "ImageTransformation"

    if-nez p1, :cond_25

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No view for id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/service/autofill/ImageTransformation;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 81
    :cond_25
    iget-object v2, p0, Landroid/service/autofill/ImageTransformation;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 82
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4f

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " multiple options on id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to compare against"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4f
    const/4 v3, 0x0

    :goto_50
    if-ge v3, v2, :cond_d3

    .line 87
    iget-object v4, p0, Landroid/service/autofill/ImageTransformation;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/ImageTransformation$Option;

    .line 89
    :try_start_5a
    iget-object v5, v4, Landroid/service/autofill/ImageTransformation$Option;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found match at "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget p1, v4, Landroid/service/autofill/ImageTransformation$Option;->resId:I

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 92
    iget-object p1, v4, Landroid/service/autofill/ImageTransformation$Option;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p1, :cond_92

    .line 93
    iget-object p1, v4, Landroid/service/autofill/ImageTransformation$Option;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_92} :catch_97

    .line 96
    :cond_92
    return-void

    .line 104
    :cond_93
    nop

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 98
    :catch_97
    move-exception p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error matching regex #"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v4, Landroid/service/autofill/ImageTransformation$Option;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") on id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v4, Landroid/service/autofill/ImageTransformation$Option;->resId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    throw p1

    .line 106
    :cond_d3
    sget-boolean p2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_ed

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No match for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_ed
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 215
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageTransformation: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ImageTransformation;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ImageTransformation;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .line 229
    iget-object v0, p0, Landroid/service/autofill/ImageTransformation;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 231
    iget-object p2, p0, Landroid/service/autofill/ImageTransformation;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 232
    new-array v0, p2, [Ljava/util/regex/Pattern;

    .line 233
    new-array v1, p2, [I

    .line 234
    new-array v2, p2, [Ljava/lang/String;

    .line 235
    const/4 v3, 0x0

    :goto_12
    if-ge v3, p2, :cond_2b

    .line 236
    iget-object v4, p0, Landroid/service/autofill/ImageTransformation;->mOptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/ImageTransformation$Option;

    .line 237
    iget-object v5, v4, Landroid/service/autofill/ImageTransformation$Option;->pattern:Ljava/util/regex/Pattern;

    aput-object v5, v0, v3

    .line 238
    iget v5, v4, Landroid/service/autofill/ImageTransformation$Option;->resId:I

    aput v5, v1, v3

    .line 239
    iget-object v4, v4, Landroid/service/autofill/ImageTransformation$Option;->contentDescription:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 241
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 242
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 243
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method
