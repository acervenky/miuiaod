.class public final enum Lcom/miui/aod/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/aod/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->UNINITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE_REQUEST_PULSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSE_DONE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "FINISH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_PAUSED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    new-instance v0, Lcom/miui/aod/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_PAUSING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/miui/aod/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/miui/aod/doze/DozeMachine$State;

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->UNINITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->INITIALIZED:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSING:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->FINISH:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/aod/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/miui/aod/doze/DozeMachine$State;

    aput-object v1, v0, v11

    sput-object v0, Lcom/miui/aod/doze/DozeMachine$State;->$VALUES:[Lcom/miui/aod/doze/DozeMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/aod/doze/DozeMachine$State;
    .locals 1

    const-class v0, Lcom/miui/aod/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/doze/DozeMachine$State;

    return-object p0
.end method

.method public static values()[Lcom/miui/aod/doze/DozeMachine$State;
    .locals 1

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$State;->$VALUES:[Lcom/miui/aod/doze/DozeMachine$State;

    invoke-virtual {v0}, [Lcom/miui/aod/doze/DozeMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/aod/doze/DozeMachine$State;

    return-object v0
.end method


# virtual methods
.method canPulse()Z
    .locals 1

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method screenState()I
    .locals 1

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method staysAwake()Z
    .locals 1

    sget-object v0, Lcom/miui/aod/doze/DozeMachine$1;->$SwitchMap$com$miui$aod$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Lcom/miui/aod/doze/DozeMachine$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
