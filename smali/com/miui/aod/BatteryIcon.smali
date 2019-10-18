.class public Lcom/miui/aod/BatteryIcon;
.super Ljava/lang/Object;
.source "BatteryIcon.java"


# static fields
.field private static sBatteryIcon:Lcom/miui/aod/BatteryIcon;


# instance fields
.field private final BATTERY_RANGE_LOAD:I

.field private mBatteryColumns:I

.field private mChargeLevel:I

.field private mContext:Landroid/content/Context;

.field private mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicRes2Drawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLevel:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/aod/BatteryIcon;->mLevel:I

    iput v0, p0, Lcom/miui/aod/BatteryIcon;->mChargeLevel:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/aod/BatteryIcon;->BATTERY_RANGE_LOAD:I

    iput-object p1, p0, Lcom/miui/aod/BatteryIcon;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/aod/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/BatteryIcon;->mBatteryColumns:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/aod/BatteryIcon;
    .locals 1

    sget-object v0, Lcom/miui/aod/BatteryIcon;->sBatteryIcon:Lcom/miui/aod/BatteryIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/aod/BatteryIcon;

    invoke-direct {v0, p0}, Lcom/miui/aod/BatteryIcon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/aod/BatteryIcon;->sBatteryIcon:Lcom/miui/aod/BatteryIcon;

    :cond_0
    sget-object p0, Lcom/miui/aod/BatteryIcon;->sBatteryIcon:Lcom/miui/aod/BatteryIcon;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/aod/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/miui/aod/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v0, p0, Lcom/miui/aod/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/aod/BatteryIcon;->mLevel:I

    iput v0, p0, Lcom/miui/aod/BatteryIcon;->mChargeLevel:I

    return-void
.end method
