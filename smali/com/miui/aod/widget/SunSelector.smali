.class public Lcom/miui/aod/widget/SunSelector;
.super Ljava/lang/Object;
.source "SunSelector.java"


# static fields
.field private static sChangePoint:[I

.field private static sSunRise:J

.field private static sSunSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    return-void

    :array_0
    .array-data 4
        0x14a
        0x154
        0x15e
        0x168
        0x172
        0x17c
        0x1db
        0x23a
        0x299
        0x2f8
        0x357
        0x3b6
        0x415
        0x424
        0x42e
        0x438
        0x442
        0x44c
        0x456
        0x4b5
        0x514
        0x2d
        0x8c
        0xeb
    .end array-data
.end method

.method static synthetic access$000()J
    .locals 2

    sget-wide v0, Lcom/miui/aod/widget/SunSelector;->sSunRise:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0

    sput-wide p0, Lcom/miui/aod/widget/SunSelector;->sSunRise:J

    return-wide p0
.end method

.method static synthetic access$100(Ljava/util/Calendar;JLjava/util/TimeZone;)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/aod/widget/SunSelector;->getTimeWithOnlyHourAndMinute(Ljava/util/Calendar;JLjava/util/TimeZone;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lcom/miui/aod/widget/SunSelector;->sSunSet:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0

    sput-wide p0, Lcom/miui/aod/widget/SunSelector;->sSunSet:J

    return-wide p0
.end method

.method static synthetic access$300(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/aod/widget/SunSelector;->updateChangepoint(JJ)V

    return-void
.end method

.method public static getChangePoint(I)I
    .locals 1

    sget-object v0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget p0, v0, p0

    return p0
.end method

.method public static getChangePointLength()I
    .locals 1

    sget-object v0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    array-length v0, v0

    return v0
.end method

.method public static getDrawableIndex()I
    .locals 3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/miui/aod/widget/SunSelector;->getDrawableIndex(I)I

    move-result v0

    return v0
.end method

.method public static getDrawableIndex(I)I
    .locals 5

    sget-object v0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v2, v2, v1

    if-lt p0, v2, :cond_0

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-ge p0, v2, :cond_0

    move v0, v1

    :cond_0
    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    sget-object v4, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v4, v4, v1

    if-ge v2, v4, :cond_2

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v2, v2, v1

    if-ge p0, v2, :cond_1

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v2, v2, v3

    if-ge p0, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static getDrawableLength()I
    .locals 1

    invoke-static {}, Lcom/miui/aod/widget/AODBg;->getSunImage()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getSunImage(I)I
    .locals 1

    invoke-static {}, Lcom/miui/aod/widget/AODBg;->getSunImage()[I

    move-result-object v0

    aget p0, v0, p0

    return p0
.end method

.method private static getTimeWithOnlyHourAndMinute(Ljava/util/Calendar;JLjava/util/TimeZone;)J
    .locals 0

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    int-to-long p0, p1

    const-wide/32 p2, 0xea60

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static shouldUpdateSunriseTime(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sunrise_update"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static updateChangepoint(JJ)V
    .locals 6

    sget-object v0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    const-wide/32 v1, 0xea60

    div-long/2addr p0, v1

    long-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v0, p1

    sget-object p0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    div-long/2addr p2, v1

    long-to-int p2, p2

    const/16 p3, 0xf

    aput p2, p0, p3

    sget-object p0, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget p0, p0, p3

    sget-object p2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget p2, p2, p1

    sub-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x28

    div-int/lit8 p0, p0, 0x8

    sget-object p2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget p2, p2, p1

    const/16 v0, 0x5a0

    add-int/2addr p2, v0

    sget-object v1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v1, v1, p3

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x3c

    const/4 v1, 0x6

    div-int/2addr p2, v1

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v3, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, -0x1e

    const/4 v4, 0x0

    aput v3, v2, v4

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v3, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, -0x14

    const/4 v5, 0x1

    aput v3, v2, v5

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v3, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, -0xa

    const/4 v5, 0x2

    aput v3, v2, v5

    :goto_0
    const/4 v2, 0x5

    if-gt v4, v2, :cond_0

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v3, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v3, v3, p1

    add-int/lit8 v5, v4, -0x3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0xc

    if-gt v1, v2, :cond_1

    sget-object v2, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v3, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v3, v3, p1

    add-int/lit8 v3, v3, 0x14

    add-int/lit8 v4, v1, -0x5

    mul-int/2addr v4, p0

    add-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 p0, 0xd

    :goto_2
    const/16 p1, 0x12

    if-gt p0, p1, :cond_2

    sget-object p1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v1, v1, p3

    add-int/lit8 v2, p0, -0xf

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    aput v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    const/16 p0, 0x13

    :goto_3
    const/16 p1, 0x17

    if-gt p0, p1, :cond_4

    sget-object p1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, 0x1e

    add-int/lit8 v2, p0, -0x12

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p1, p0

    sget-object p1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget p1, p1, p0

    if-le p1, v0, :cond_3

    sget-object p1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    sget-object v1, Lcom/miui/aod/widget/SunSelector;->sChangePoint:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    aput v1, p1, p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static updateSunRiseTime(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/aod/widget/SunSelector;->shouldUpdateSunriseTime(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/miui/aod/widget/SunSelector$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/aod/widget/SunSelector$1;-><init>(Landroid/content/Context;Ljava/util/Calendar;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v2, p0}, Lcom/miui/aod/widget/SunSelector$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sunrise"

    const-wide/16 v2, 0x168

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "sunset"

    const-wide/16 v3, 0x438

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/aod/widget/SunSelector;->updateChangepoint(JJ)V

    :goto_0
    return-void
.end method
