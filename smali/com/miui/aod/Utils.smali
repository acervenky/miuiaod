.class public Lcom/miui/aod/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final GXZW_SENSOR:Z

.field public static final SUPPORT_AOD:Z

.field public static final SUPPORT_LOW_BRIGHTNESS_FOD:Z

.field private static TAG:Ljava/lang/String; = "MiuiAod.Utils"

.field private static sSystemBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "support_aod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_AOD:Z

    const-string v0, "equuleus"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ursa"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_LOW_BRIGHTNESS_FOD:Z

    const-string v0, "ro.hardware.fp.fod"

    invoke-static {v0, v1}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getBooleanFromSystemProperties(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/aod/Utils;->GXZW_SENSOR:Z

    return-void
.end method

.method public static dp2Px(I)I
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/util/DeviceInfo;->dp2Px(I)I

    move-result p0

    return p0
.end method

.method public static getAodEndTime(Landroid/content/Context;)J
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_end"

    const/16 v1, 0x564

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAodStartTime(Landroid/content/Context;)J
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_start"

    const/16 v1, 0x1a4

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getHourMinformat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getKeyguardNotificationStatus(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "new_device_after_support_notification_animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "perseus"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/aod/Utils;->isSupportAodAnimateDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wakeup_for_keyguard_notification"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getShowStyle(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_style"

    sget v1, Lcom/miui/aod/widget/AODSettings;->AOD_SHOW_STYLE_DEF:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static isAodAnimateEnable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/Utils;->getKeyguardNotificationStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAodClockDisable(Landroid/content/Context;)Z
    .locals 11

    invoke-static {p0}, Lcom/miui/aod/Utils;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/miui/aod/Utils;->isShowTemporary(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/miui/aod/Utils;->isTimingStyle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/miui/aod/Utils;->getAodStartTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {p0}, Lcom/miui/aod/Utils;->getAodEndTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p0

    int-to-long v7, v0

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long p0, v3, v5

    if-gez p0, :cond_1

    cmp-long v0, v7, v3

    if-ltz v0, :cond_2

    cmp-long v0, v7, v5

    if-gtz v0, :cond_2

    :cond_1
    if-lez p0, :cond_3

    cmp-long p0, v7, v3

    if-gez p0, :cond_3

    cmp-long p0, v7, v5

    if-lez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public static isAodEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/miui/aod/widget/AODSettings;->AOD_MODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static isBatteryEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_battery"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isBootCompleted()Z
    .locals 3

    sget-boolean v0, Lcom/miui/aod/Utils;->sSystemBootCompleted:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/miui/aod/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/aod/Utils;->sSystemBootCompleted:Z

    :cond_0
    sget-boolean v0, Lcom/miui/aod/Utils;->sSystemBootCompleted:Z

    return v0
.end method

.method public static isCJKCharacter(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isControlCharactor(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isControlCharactorNoLf(I)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/Utils;->isControlCharactor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmojiCharacter(I)Z
    .locals 1

    const/16 v0, 0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x2af

    if-le p0, v0, :cond_18

    :cond_0
    const/16 v0, 0x300

    if-gt v0, p0, :cond_1

    const/16 v0, 0x3ff

    if-le p0, v0, :cond_18

    :cond_1
    const/16 v0, 0x600

    if-gt v0, p0, :cond_2

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_18

    :cond_2
    const/16 v0, 0xc00

    if-gt v0, p0, :cond_3

    const/16 v0, 0xc7f

    if-le p0, v0, :cond_18

    :cond_3
    const/16 v0, 0x1dc0

    if-gt v0, p0, :cond_4

    const/16 v0, 0x1dff

    if-le p0, v0, :cond_18

    :cond_4
    const/16 v0, 0x1e00

    if-gt v0, p0, :cond_5

    const/16 v0, 0x1eff

    if-le p0, v0, :cond_18

    :cond_5
    const/16 v0, 0x2000

    if-gt v0, p0, :cond_6

    const/16 v0, 0x209f

    if-le p0, v0, :cond_18

    :cond_6
    const/16 v0, 0x20d0

    if-gt v0, p0, :cond_7

    const/16 v0, 0x214f

    if-le p0, v0, :cond_18

    :cond_7
    const/16 v0, 0x2190

    if-gt v0, p0, :cond_8

    const/16 v0, 0x23ff

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2460

    if-gt v0, p0, :cond_9

    const/16 v0, 0x25ff

    if-le p0, v0, :cond_18

    :cond_9
    const/16 v0, 0x2600

    if-gt v0, p0, :cond_a

    const/16 v0, 0x27ef

    if-le p0, v0, :cond_18

    :cond_a
    const/16 v0, 0x2900

    if-gt v0, p0, :cond_b

    const/16 v0, 0x29ff

    if-le p0, v0, :cond_18

    :cond_b
    const/16 v0, 0x2b00

    if-gt v0, p0, :cond_c

    const/16 v0, 0x2bff

    if-le p0, v0, :cond_18

    :cond_c
    const/16 v0, 0x2c60

    if-gt v0, p0, :cond_d

    const/16 v0, 0x2c7f

    if-le p0, v0, :cond_18

    :cond_d
    const/16 v0, 0x2e00

    if-gt v0, p0, :cond_e

    const/16 v0, 0x2e7f

    if-le p0, v0, :cond_18

    :cond_e
    const v0, 0xa490

    if-gt v0, p0, :cond_f

    const v0, 0xa4cf

    if-le p0, v0, :cond_18

    :cond_f
    const v0, 0xe000

    if-gt v0, p0, :cond_10

    const v0, 0xf8ff

    if-le p0, v0, :cond_18

    :cond_10
    const v0, 0xfe00

    if-gt v0, p0, :cond_11

    const v0, 0xfe0f

    if-le p0, v0, :cond_18

    :cond_11
    const v0, 0xfe30

    if-gt v0, p0, :cond_12

    const v0, 0xfe4f

    if-le p0, v0, :cond_18

    :cond_12
    const v0, 0x1f000

    if-gt v0, p0, :cond_13

    const v0, 0x1f02f

    if-le p0, v0, :cond_18

    :cond_13
    const v0, 0x1f0a0

    if-gt v0, p0, :cond_14

    const v0, 0x1f0ff

    if-le p0, v0, :cond_18

    :cond_14
    const v0, 0x1f100

    if-gt v0, p0, :cond_15

    const v0, 0x1f64f

    if-le p0, v0, :cond_18

    :cond_15
    const v0, 0x1f680

    if-gt v0, p0, :cond_16

    const v0, 0x1f6ff

    if-le p0, v0, :cond_18

    :cond_16
    const v0, 0x1f910

    if-gt v0, p0, :cond_17

    const v0, 0x1f96b

    if-le p0, v0, :cond_18

    :cond_17
    const v0, 0x1f980

    if-gt v0, p0, :cond_19

    const v0, 0x1f9e0

    if-gt p0, v0, :cond_19

    :cond_18
    const/4 p0, 0x1

    goto :goto_0

    :cond_19
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFingerprintDisabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFodAodShowEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gxzw_icon_aod_show_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGxzwSensor()Z
    .locals 1

    sget-boolean v0, Lcom/miui/aod/Utils;->GXZW_SENSOR:Z

    return v0
.end method

.method public static isInvertColorsEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_inversion_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isLayoutRtl()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNotificationEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPowerSaveMode(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/miui/aod/util/BatteryController;->isCharging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-nez p0, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static isShowFingerprintIcon(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/Utils;->isUnlockWithFingerprintPossible(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/aod/AODApplication;->getHost()Lcom/miui/aod/DozeHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->isGxzwIconShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShowTemporary(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAodAnimateDevice()Z
    .locals 1

    sget-boolean v0, Lcom/miui/aod/Utils;->SUPPORT_AOD:Z

    return v0
.end method

.method public static isTimingStyle(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isUnlockWithFingerprintPossible(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/aod/Utils;->isFingerprintDisabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/miui/aod/utils/CommonUtils;->getEnrolledFingerprintsSize(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static putKeyguardNotificationStatus(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wakeup_for_keyguard_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static px2Dp(I)I
    .locals 0

    invoke-static {p0}, Lcom/miui/aod/util/DeviceInfo;->px2Dp(I)I

    move-result p0

    return p0
.end method

.method private static setTouchMode(II)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTouchMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "miui.util.ITouchFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/aod/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "setTouchMode"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v4, v3}, Lcom/miui/aod/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/aod/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static updateTouchMode(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/aod/Utils;->isShowTemporary(Landroid/content/Context;)Z

    move-result p0

    const/16 v0, 0xb

    invoke-static {v0, p0}, Lcom/miui/aod/Utils;->setTouchMode(II)Z

    return-void
.end method
