.class public Lcom/miui/aod/widget/AODSettings;
.super Ljava/lang/Object;
.source "AODSettings.java"


# static fields
.field public static final AOD_CATEGORY_NAME:Ljava/lang/String; = "aod_category_name"

.field public static final AOD_DUAL_CATEGORY_NAME:Ljava/lang/String; = "aod_dual_category_name"

.field public static final AOD_MODE:Ljava/lang/String;

.field public static final AOD_SHOW_STYLE_DEF:I

.field private static final KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;

.field private static sClockStylesHighOld:[Ljava/lang/String;

.field private static sClockStylesOld:[Ljava/lang/String;

.field public static sDualClockStyles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "doze_always_on"

    goto :goto_0

    :cond_0
    const-string v0, "aod_mode"

    :goto_0
    sput-object v0, Lcom/miui/aod/widget/AODSettings;->AOD_MODE:Ljava/lang/String;

    const-string v0, "pyxis"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/widget/AODSettings;->KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;

    invoke-static {}, Lcom/miui/aod/widget/AODSettings;->isKeycodeGotoEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/aod/widget/AODSettings;->AOD_SHOW_STYLE_DEF:I

    const-string v1, "white_horizontal"

    const-string v2, "pink_horizontal"

    const-string v3, "blue_horizontal"

    const-string v4, "paint_vertical"

    const-string v5, "white_vertical"

    const-string v6, "pink_vertical"

    const-string v7, "blue_vertical"

    const-string v8, "paint_vertical"

    const-string v9, "tree_oneline"

    const-string v10, "spirit_oneline"

    const-string v11, "succulent_oneline"

    const-string v12, "cactus_oneline"

    const-string v13, "sun"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/widget/AODSettings;->sClockStylesOld:[Ljava/lang/String;

    const-string v1, "sun"

    const-string v2, "white_horizontal"

    const-string v3, "pink_horizontal"

    const-string v4, "blue_horizontal"

    const-string v5, "white_vertical"

    const-string v6, "pink_vertical"

    const-string v7, "blue_vertical"

    const-string v8, "paint_vertical"

    const-string v9, "shadow_vertical"

    const-string v10, "moonlight_vertical"

    const-string v11, "tree_oneline"

    const-string v12, "cactus_oneline"

    const-string v13, "succulent_oneline"

    const-string v14, "spirit_oneline"

    const-string v15, "ghost_oneline"

    const-string v16, "spaceman_oneline"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/widget/AODSettings;->sClockStylesHighOld:[Ljava/lang/String;

    const-string v0, "dual_default"

    const-string v1, "dual_panel"

    const-string v2, "dual_together"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/widget/AODSettings;->sDualClockStyles:[Ljava/lang/String;

    return-void
.end method

.method public static getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/widget/AODSettings;->AOD_DUAL_CATEGORY_NAME:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/aod/widget/AODSettings;->AOD_CATEGORY_NAME:Ljava/lang/String;

    :goto_0
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/aod/util/CategoryPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/miui/aod/category/CategoryConstants;->getDefaultCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormat(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f090060

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_1

    const p1, 0x7f090023

    goto :goto_0

    :cond_1
    const p1, 0x7f090024

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getNamebyZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "Asia/Shanghai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    const-string v0, "Asia/Shanghai"

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShowStyleEntries(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f100000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/aod/widget/AODSettings;->isKeycodeGotoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p0, v2

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getShowStyleValues(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100001

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/aod/widget/AODSettings;->isKeycodeGotoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p0, v2

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSingleClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;
    .locals 2

    const-string v0, "aod_category_name"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/aod/util/CategoryPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "animate_clock_panel"

    :cond_0
    invoke-static {p0, v0}, Lcom/miui/aod/category/CategoryFactory;->createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static isDualClock(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dual_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "resident_timezone"

    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isHighPerformance()Z
    .locals 1

    invoke-static {}, Lcom/miui/aod/category/CategoryConstants;->isHighPerformance()Z

    move-result v0

    return v0
.end method

.method public static isKeycodeGotoEnable()Z
    .locals 4

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/miui/aod/widget/AODSettings;->KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/miui/aod/widget/AODSettings;->KEYCODE_GOTO_ENABLE_DEVICE:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "aod_support_keycode_goto_dismiss"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNeedTimeChangedStyle(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    instance-of v0, p0, Lcom/miui/aod/category/SunCategoryInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/common/StyleInfo;->isChangeColorAlongTime()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSunStyle(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/aod/category/SunCategoryInfo;

    return p0
.end method

.method public static shouldShowLunarDate(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_lunar_calendar"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static supportShowExtraInfo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text_style"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static translateShowStyleValue2Index(I)I
    .locals 1

    invoke-static {}, Lcom/miui/aod/widget/AODSettings;->isKeycodeGotoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static upgradeIndex2Name(Landroid/content/ContentResolver;Z)V
    .locals 3

    const-string v0, "change_index2name"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "aod_style_index"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/miui/aod/widget/AODSettings;->isHighPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/widget/AODSettings;->sClockStylesHighOld:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/aod/widget/AODSettings;->sClockStylesOld:[Ljava/lang/String;

    :goto_0
    if-ltz p1, :cond_1

    array-length v2, v0

    if-ge p1, v2, :cond_1

    const-string v2, "aod_style_name"

    aget-object p1, v0, p1

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string p1, "aod_style_index_dual"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_2

    sget-object v1, Lcom/miui/aod/widget/AODSettings;->sDualClockStyles:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    const-string v1, "aod_style_name_dual"

    aget-object p1, v0, p1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-string p1, "change_index2name"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method public static upgradeName2Category(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "change_name2category"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/aod/util/CategoryPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_style_name"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/category/CategoryFactory;->getPresetStyleInfo(Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "aod_category_name"

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_style_name_dual"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/category/CategoryFactory;->getPresetStyleInfo(Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "aod_dual_category_name"

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "change_name2category"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/aod/util/CategoryPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static upgradeScrapHistoryName(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sScrappedCateConverter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/common/StyleInfo;

    if-eqz v0, :cond_0

    const-string v1, "aod_category_name"

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
