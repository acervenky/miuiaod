.class public Lcom/miui/aod/widget/AODBg;
.super Ljava/lang/Object;
.source "AODBg.java"


# static fields
.field private static sSunImage:[I

.field private static sSunImageHigh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x18

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/aod/widget/AODBg;->sSunImageHigh:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/aod/widget/AODBg;->sSunImage:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0201a5
        0x7f0201a4
        0x7f0201a2
        0x7f0201a0
        0x7f0201a1
        0x7f0201a3
        0x7f02019d
        0x7f02019e
        0x7f02019f
        0x7f020194
        0x7f020195
        0x7f020196
        0x7f020197
        0x7f0201aa
        0x7f0201a8
        0x7f0201a6
        0x7f0201a7
        0x7f0201a9
        0x7f0201ab
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
    .end array-data

    :array_1
    .array-data 4
        0x7f0201b1
        0x7f0201b0
        0x7f0201ae
        0x7f0201ac
        0x7f0201ad
        0x7f0201af
        0x7f020191
        0x7f020192
        0x7f020193
        0x7f020188
        0x7f020189
        0x7f02018a
        0x7f02018b
        0x7f0201b6
        0x7f0201b4
        0x7f0201b2
        0x7f0201b3
        0x7f0201b5
        0x7f0201b7
        0x7f02018c
        0x7f02018d
        0x7f02018e
        0x7f02018f
        0x7f020190
    .end array-data
.end method

.method public static getSunImage()[I
    .locals 1

    invoke-static {}, Lcom/miui/aod/widget/AODSettings;->isHighPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/widget/AODBg;->sSunImageHigh:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/aod/widget/AODBg;->sSunImage:[I

    :goto_0
    return-object v0
.end method
