.class public Lcom/miui/aod/category/CategoryConstants;
.super Ljava/lang/Object;
.source "CategoryConstants.java"


# static fields
.field private static final HIGH_PERFORMANCE_DEVICE:[Ljava/lang/String;

.field public static SSMALL_RADIO:F = 1.0f

.field private static sIsHighPerformance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "cepheus"

    const-string v1, "grus"

    const-string v2, "davinci"

    const-string v3, "raphael"

    const-string v4, "pyxis"

    const-string v5, "laurus"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/category/CategoryConstants;->HIGH_PERFORMANCE_DEVICE:[Ljava/lang/String;

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/miui/aod/category/CategoryConstants;->HIGH_PERFORMANCE_DEVICE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/miui/aod/category/CategoryConstants;->HIGH_PERFORMANCE_DEVICE:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/aod/category/CategoryConstants;->sIsHighPerformance:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getDefaultCategoryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dual_clock"

    goto :goto_0

    :cond_0
    const-string p0, "animate_clock_panel"

    :goto_0
    return-object p0
.end method

.method public static isHighPerformance()Z
    .locals 1

    sget-boolean v0, Lcom/miui/aod/category/CategoryConstants;->sIsHighPerformance:Z

    return v0
.end method
