.class public Lcom/miui/aod/widget/FrameAnimationManager;
.super Ljava/lang/Object;
.source "FrameAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;
    }
.end annotation


# static fields
.field public static final CLOCK_PANEL_ANIMATION_FIRST_ARRAYS:[I

.field public static final CLOCK_PANEL_ANIMATION_SECOND_ARRAYS:[I

.field public static final CLOCK_PANEL_ANIMATION_THIRD_ARRAYS:[I

.field private static final sFrameInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x3c

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/aod/widget/FrameAnimationManager;->CLOCK_PANEL_ANIMATION_FIRST_ARRAYS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->CLOCK_PANEL_ANIMATION_SECOND_ARRAYS:[I

    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->CLOCK_PANEL_ANIMATION_THIRD_ARRAYS:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->sFrameInfoMap:Ljava/util/Map;

    sget-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "clock_panel_first"

    new-instance v9, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    sget-object v3, Lcom/miui/aod/widget/FrameAnimationManager;->CLOCK_PANEL_ANIMATION_FIRST_ARRAYS:[I

    const v4, 0x7f0200d0

    const/16 v5, 0x1e

    const v6, 0x7f0201dc

    const v7, 0x7f0201e0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;-><init>([IIIIILcom/miui/aod/widget/FrameAnimationManager$1;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "clock_panel_second"

    new-instance v9, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    sget-object v3, Lcom/miui/aod/widget/FrameAnimationManager;->CLOCK_PANEL_ANIMATION_SECOND_ARRAYS:[I

    const v4, 0x7f02010e

    const v6, 0x7f0201dd

    const v7, 0x7f0201e1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;-><init>([IIIIILcom/miui/aod/widget/FrameAnimationManager$1;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "clock_panel_third"

    new-instance v9, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    sget-object v3, Lcom/miui/aod/widget/FrameAnimationManager;->CLOCK_PANEL_ANIMATION_THIRD_ARRAYS:[I

    const v4, 0x7f02014c

    const v6, 0x7f0201de

    const v7, 0x7f0201e2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;-><init>([IIIIILcom/miui/aod/widget/FrameAnimationManager$1;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x7f020093
        0x7f02009e
        0x7f0200a9
        0x7f0200b4
        0x7f0200bf
        0x7f0200ca
        0x7f0200cd
        0x7f0200ce
        0x7f0200cf
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
        0x7f02009d
        0x7f02009f
        0x7f0200a0
        0x7f0200a1
        0x7f0200a2
        0x7f0200a3
        0x7f0200a4
        0x7f0200a5
        0x7f0200a6
        0x7f0200a7
        0x7f0200a8
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
        0x7f0200ae
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
        0x7f0200b2
        0x7f0200b3
        0x7f0200b5
        0x7f0200b6
        0x7f0200b7
        0x7f0200b8
        0x7f0200b9
        0x7f0200ba
        0x7f0200bb
        0x7f0200bc
        0x7f0200bd
        0x7f0200be
        0x7f0200c0
        0x7f0200c1
        0x7f0200c2
        0x7f0200c3
        0x7f0200c4
        0x7f0200c5
        0x7f0200c6
        0x7f0200c7
        0x7f0200c8
        0x7f0200c9
        0x7f0200cb
    .end array-data

    :array_1
    .array-data 4
        0x7f0200d1
        0x7f0200dc
        0x7f0200e7
        0x7f0200f2
        0x7f0200fd
        0x7f020108
        0x7f02010b
        0x7f02010c
        0x7f02010d
        0x7f0200d2
        0x7f0200d3
        0x7f0200d4
        0x7f0200d5
        0x7f0200d6
        0x7f0200d7
        0x7f0200d8
        0x7f0200d9
        0x7f0200da
        0x7f0200db
        0x7f0200dd
        0x7f0200de
        0x7f0200df
        0x7f0200e0
        0x7f0200e1
        0x7f0200e2
        0x7f0200e3
        0x7f0200e4
        0x7f0200e5
        0x7f0200e6
        0x7f0200e8
        0x7f0200e9
        0x7f0200ea
        0x7f0200eb
        0x7f0200ec
        0x7f0200ed
        0x7f0200ee
        0x7f0200ef
        0x7f0200f0
        0x7f0200f1
        0x7f0200f3
        0x7f0200f4
        0x7f0200f5
        0x7f0200f6
        0x7f0200f7
        0x7f0200f8
        0x7f0200f9
        0x7f0200fa
        0x7f0200fb
        0x7f0200fc
        0x7f0200fe
        0x7f0200ff
        0x7f020100
        0x7f020101
        0x7f020102
        0x7f020103
        0x7f020104
        0x7f020105
        0x7f020106
        0x7f020107
        0x7f020109
    .end array-data

    :array_2
    .array-data 4
        0x7f02010f
        0x7f02011a
        0x7f020125
        0x7f020130
        0x7f02013b
        0x7f020146
        0x7f020149
        0x7f02014a
        0x7f02014b
        0x7f020110
        0x7f020111
        0x7f020112
        0x7f020113
        0x7f020114
        0x7f020115
        0x7f020116
        0x7f020117
        0x7f020118
        0x7f020119
        0x7f02011b
        0x7f02011c
        0x7f02011d
        0x7f02011e
        0x7f02011f
        0x7f020120
        0x7f020121
        0x7f020122
        0x7f020123
        0x7f020124
        0x7f020126
        0x7f020127
        0x7f020128
        0x7f020129
        0x7f02012a
        0x7f02012b
        0x7f02012c
        0x7f02012d
        0x7f02012e
        0x7f02012f
        0x7f020131
        0x7f020132
        0x7f020133
        0x7f020134
        0x7f020135
        0x7f020136
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013c
        0x7f02013d
        0x7f02013e
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020147
        0x7f020148
    .end array-data
.end method

.method public static getFrameAnimationInfoByStyleName(Ljava/lang/String;)Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;
    .locals 1

    sget-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->sFrameInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/widget/FrameAnimationManager$FrameAnimationInfo;

    return-object p0
.end method

.method public static needFrameAnimation(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/aod/widget/FrameAnimationManager;->sFrameInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
