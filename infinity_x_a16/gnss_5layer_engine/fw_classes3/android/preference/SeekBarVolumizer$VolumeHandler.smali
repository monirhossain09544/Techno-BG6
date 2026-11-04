.class Landroid/preference/SeekBarVolumizer$VolumeHandler;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 702
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$VolumeHandler;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 705
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 706
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_2c

    goto :goto_2b

    .line 708
    :pswitch_a
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 709
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    if-ne v0, p1, :cond_2a

    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_24

    goto :goto_2a

    .line 713
    :cond_24
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2b

    .line 711
    :cond_2a
    :goto_2a
    return-void

    .line 716
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
