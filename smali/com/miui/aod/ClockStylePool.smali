.class public Lcom/miui/aod/ClockStylePool;
.super Ljava/lang/Object;
.source "ClockStylePool.java"


# static fields
.field private static sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_1"

    const v2, 0x7f02008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_2"

    const v2, 0x7f02008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_3"

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_4"

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_5"

    const v2, 0x7f020090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_6"

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const-string v1, "CLOCK_STYLE_STATIC_7"

    const v2, 0x7f020092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getClockPanelBgByStyleName(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/miui/aod/ClockStylePool;->sMap:Ljava/util/Map;

    const v1, 0x7f02008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
