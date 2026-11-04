.class public Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;
.super Ljava/lang/Object;
.source "IInputMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartInputParams"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist editorInfo:Landroid/view/inputmethod/EditorInfo;

.field public blacklist imeBackCallbackReceiver:Landroid/os/ResultReceiver;

.field public blacklist navigationBarFlags:I

.field public blacklist remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public blacklist restarting:Z

.field public blacklist startInputToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 750
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    .line 748
    iput v0, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 810
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 811
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 812
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 814
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 804
    nop

    .line 805
    iget-object v0, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 806
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeBackCallbackReceiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, v1}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 807
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 782
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_cf

    .line 783
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_cd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 783
    return-void

    .line 797
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 784
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_cd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 785
    return-void

    .line 797
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 786
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_cd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 787
    return-void

    .line 797
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 788
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_cd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 789
    return-void

    .line 797
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_cd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 791
    return-void

    .line 797
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 792
    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_cd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 793
    return-void

    .line 797
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 794
    :cond_b4
    :try_start_b4
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeBackCallbackReceiver:Landroid/os/ResultReceiver;
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_cd

    .line 796
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c7

    .line 799
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 800
    nop

    .line 801
    return-void

    .line 797
    :cond_c7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 796
    :catchall_cd
    move-exception v2

    goto :goto_d7

    .line 782
    :cond_cf
    :try_start_cf
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d7
    .catchall {:try_start_cf .. :try_end_d7} :catchall_cd

    .line 796
    :goto_d7
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e0

    .line 797
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 799
    :cond_e0
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 800
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 765
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 767
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 768
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 769
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 770
    iget v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-object v1, p0, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeBackCallbackReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 773
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 774
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 776
    return-void
.end method
