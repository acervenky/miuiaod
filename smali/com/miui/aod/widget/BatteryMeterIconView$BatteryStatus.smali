.class final enum Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;
.super Ljava/lang/Enum;
.source "BatteryMeterIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/BatteryMeterIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BatteryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum CHARGING:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum CHARGING_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum LOW:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum LOW_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum NORMAL_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum POWER_SAVE:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum POWER_SAVE_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

.field public static final enum UNKNOWN:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->UNKNOWN:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "LOW_DIGIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "NORMAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "NORMAL_DIGIT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "CHARGING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "CHARGING_DIGIT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "POWER_SAVE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    new-instance v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const-string v1, "POWER_SAVE_DIGIT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->UNKNOWN:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->LOW_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->NORMAL_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->CHARGING_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->POWER_SAVE_DIGIT:Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    aput-object v1, v0, v10

    sput-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->$VALUES:[Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;
    .locals 1

    const-class v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    return-object p0
.end method

.method public static values()[Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;
    .locals 1

    sget-object v0, Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->$VALUES:[Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    invoke-virtual {v0}, [Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/aod/widget/BatteryMeterIconView$BatteryStatus;

    return-object v0
.end method
