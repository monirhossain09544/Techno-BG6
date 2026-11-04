.class public Lcom/android/internal/protolog/ProtoLogCommandHandler;
.super Landroid/os/ShellCommand;
.source "ProtoLogCommandHandler.java"


# instance fields
.field private final blacklist mPrintWriter:Ljava/io/PrintWriter;

.field private final blacklist mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V
    .registers 3

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 46
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    .line 47
    return-void
.end method

.method private blacklist handleGroupsCommands(Ljava/lang/String;)I
    .registers 9

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 108
    const-string p1, "Incomplete command. Use \'cmd protolog help\' for guidance."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    return v1

    .line 112
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_110

    :cond_15
    goto :goto_2a

    :sswitch_16
    const-string v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    goto :goto_2b

    :sswitch_20
    const-string v2, "status"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_2b

    :goto_2a
    move v2, v3

    :goto_2b
    const-string v4, "No ProtoLog groups registered with ProtoLog service."

    packed-switch v2, :pswitch_data_11a

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    return v3

    .line 128
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 130
    if-nez p1, :cond_8f

    .line 131
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {p1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object p1

    .line 132
    array-length v2, p1

    if-nez v2, :cond_5a

    .line 133
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8e

    .line 135
    :cond_5a
    const-string v2, "Status for all ProtoLog groups:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    array-length v2, p1

    move v3, v1

    :goto_61
    if-ge v3, v2, :cond_8e

    aget-object v4, p1, v3

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": LOG_TO_LOGCAT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 138
    invoke-interface {v6, v4}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->isLoggingToLogcat(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 142
    :cond_8e
    :goto_8e
    return v1

    .line 145
    :cond_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProtoLog group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v2}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 148
    const-string p1, "UNREGISTERED"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    return v1

    .line 152
    :cond_c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOG_TO_LOGCAT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    .line 153
    invoke-interface {v3, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->isLoggingToLogcat(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    return v1

    .line 114
    :pswitch_de
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {p1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object p1

    .line 115
    array-length v2, p1

    if-nez v2, :cond_eb

    .line 116
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    return v1

    .line 120
    :cond_eb
    const-string v2, "ProtoLog groups registered with service:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    array-length v2, p1

    move v3, v1

    :goto_f2
    if-ge v3, v2, :cond_10f

    aget-object v4, p1, v3

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 125
    :cond_10f
    return v1

    :sswitch_data_110
    .sparse-switch
        -0x3532300e -> :sswitch_20
        0x32b09e -> :sswitch_16
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_de
        :pswitch_47
    .end packed-switch
.end method

.method private blacklist handleLogcatCommands(Ljava/lang/String;)I
    .registers 6

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 167
    const-string p1, "Incomplete command. Use \'cmd protolog help\' for guidance."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return v1

    .line 171
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_5a

    :cond_15
    goto :goto_2a

    :sswitch_16
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_2b

    :sswitch_20
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    goto :goto_2b

    :goto_2a
    move v2, v3

    :goto_2b
    packed-switch v2, :pswitch_data_64

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return v3

    .line 177
    :pswitch_45
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 178
    return v1

    .line 173
    :pswitch_4f
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 174
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x4d6ada7d -> :sswitch_20
        0x639e22e8 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_45
    .end packed-switch
.end method

.method private blacklist processGroups()[Ljava/lang/String;
    .registers 3

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :goto_12
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 198
    :cond_20
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    return-object v0

    .line 101
    :cond_7
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .registers 5

    .line 65
    if-eqz p1, :cond_35

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_35

    .line 69
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " (use \'help\' command for guidance)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const/4 p1, -0x1

    return p1

    .line 66
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    .line 67
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onCommand(Ljava/lang/String;)I
    .registers 4

    .line 51
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    .line 53
    return v0

    .line 56
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    :cond_e
    goto :goto_22

    :sswitch_f
    const-string v0, "logcat"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_23

    :sswitch_19
    const-string v1, "groups"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_48

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto :goto_3c

    .line 58
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleLogcatCommands(Ljava/lang/String;)I

    move-result p1

    goto :goto_3c

    .line 57
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleGroupsCommands(Ljava/lang/String;)I

    move-result p1

    .line 56
    :goto_3c
    return p1

    nop

    :sswitch_data_3e
    .sparse-switch
        -0x49c2262c -> :sswitch_19
        -0x416819ee -> :sswitch_f
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2b
    .end packed-switch
.end method

.method public blacklist onHelp()V
    .registers 3

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 78
    const-string v1, "ProtoLog commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 82
    const-string v1, "  groups (list | status)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    list - Lists all ProtoLog groups registered with ProtoLog service"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    status <group>? - Print the status of a ProtoLog group. If no group is passed then it prints the status of all groups."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 87
    const-string v1, "  logcat (enable | disable) <group>?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    Enable or disable ProtoLog to logcat. Passing no groups to the command will enable/disable all groups. Passing a group or space separated list of groups to the command will enable/disable those groups only."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 92
    return-void
.end method
