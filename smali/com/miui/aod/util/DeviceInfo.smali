.class public Lcom/miui/aod/util/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static mBitmapScaleRatio:F = -1.0f

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics; = null

.field private static mScreenDensity:I = -0x1

.field private static sCpuInfo:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static dp2Px(I)I
    .locals 1

    invoke-static {}, Lcom/miui/aod/util/DeviceInfo;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    sget-object v0, Lcom/miui/aod/util/DeviceInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/aod/Application;->sInstance:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/util/DeviceInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object v0, Lcom/miui/aod/util/DeviceInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static px2Dp(I)I
    .locals 1

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/aod/util/DeviceInfo;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
