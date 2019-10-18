.class public Lcom/miui/aod/category/CategoryFactory;
.super Ljava/lang/Object;
.source "CategoryFactory.java"


# static fields
.field private static final sCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final sCategoryNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClockCategory:[Ljava/lang/String;

.field private static final sPresetStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final sScrappedCateConverter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/aod/category/CategoryFactory;->sScrappedCateConverter:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    const-string v1, "kaleidoscope"

    const v2, 0x7f09004e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    const-string v1, "panel_clock"

    const v2, 0x7f090047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    const-string v1, "digital_time"

    const v2, 0x7f09003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    const-string v1, "signature"

    const v2, 0x7f090055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    const-string v1, "chosen_picture"

    const v2, 0x7f090034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "white_horizontal"

    const-string v3, "{\"color\":\"white\"}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "pink_horizontal"

    const-string v3, "{\"color\":\"pink\"}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "blue_horizontal"

    const-string v3, "{\"color\":\"blue\"}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "paint_horizontal"

    const-string v3, "{\"bg\":\"paint\"}"

    const-class v4, Lcom/miui/aod/category/PaintVerticalCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "white_vertical"

    const-string v3, "{\"color\":\"white\",\"is_vertical\":true}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "pink_vertical"

    const-string v3, "{\"color\":\"pink\",\"is_vertical\":true}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "blue_vertical"

    const-string v3, "{\"color\":\"blue\",\"is_vertical\":true}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "paint_vertical"

    const-string v3, "{\"bg\":\"paint\"}"

    const-class v4, Lcom/miui/aod/category/PaintVerticalCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "shadow_vertical"

    const-string v3, "{\"bg\":\"shadow\"}"

    const-class v4, Lcom/miui/aod/category/PaintVerticalCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "moonlight_vertical"

    const-string v3, "{\"bg\":\"moonlight\"}"

    const-class v4, Lcom/miui/aod/category/PaintVerticalCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "tree_oneline"

    const-string v3, "{\"bg\":\"tree\"}"

    const-class v4, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "spirit_oneline"

    const-string v3, "{\"bg\":\"spirit\"}"

    const-class v4, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "succulent_oneline"

    const-string v3, "{\"bg\":\"succulent\"}"

    const-class v4, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "cactus_oneline"

    const-string v3, "{\"bg\":\"cactus\"}"

    const-class v4, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "ghost_oneline"

    const-string v3, "{\"bg\":\"ghost\"}"

    const-class v4, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "spaceman_oneline"

    const-string v3, "{\"bg\":\"spaceman\"}"

    const-class v4, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "sun"

    const-string v3, "{}"

    const-class v4, Lcom/miui/aod/category/SunCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "white_horizontal_left"

    const-string v3, "{\"is_left_gravity\":true}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "clock_panel"

    const-string v3, "{}"

    const-class v4, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "clock_panel_first"

    const-string v3, "{\"panel\":\"clock_panel_first\",\"color\":\"light_purple\"}"

    const-class v4, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "clock_panel_second"

    const-string v3, "{\"panel\":\"clock_panel_second\",\"color\":\"light_blue\"}"

    const-class v4, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "clock_panel_third"

    const-string v3, "{\"panel\":\"clock_panel_third\",\"color\":\"light_orange\"}"

    const-class v4, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "dual_default"

    const-string v3, "{\"dual_clock_style\":\"dual_default\"}"

    const-class v4, Lcom/miui/aod/category/DualClockCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "dual_panel"

    const-string v3, "{\"dual_clock_style\":\"dual_panel\"}"

    const-class v4, Lcom/miui/aod/category/DualClockCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    const-string v2, "dual_together"

    const-string v3, "{\"dual_clock_style\":\"dual_together\"}"

    const-class v4, Lcom/miui/aod/category/DualClockCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sScrappedCateConverter:Landroid/util/ArrayMap;

    const-string v2, "horizontal"

    const-string v3, "{}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sScrappedCateConverter:Landroid/util/ArrayMap;

    const-string v2, "vertical"

    const-string v3, "{\"is_vertical\":true}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sScrappedCateConverter:Landroid/util/ArrayMap;

    const-string v2, "horizontal_left"

    const-string v3, "{\"is_left_gravity\":true}"

    const-class v4, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "linear_timetext"

    const-class v2, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "paint_vertical"

    const-class v2, Lcom/miui/aod/category/PaintVerticalCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "oneline"

    const-class v2, Lcom/miui/aod/category/OnelineCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "scope"

    const-class v2, Lcom/miui/aod/category/ScopeCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "clock_panel"

    const-class v2, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "animate_clock_panel"

    const-class v2, Lcom/miui/aod/category/AnimateClockPanelCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "sun"

    const-class v2, Lcom/miui/aod/category/SunCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "text_style"

    const-class v2, Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    const-string v1, "dual_clock"

    const-class v2, Lcom/miui/aod/category/DualClockCategoryInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "animate_clock_panel"

    const-string v4, "clock_panel"

    const-string v5, "oneline"

    const-string v6, "sun"

    const-string v7, "scope"

    const-string v8, "paint_vertical"

    const-string v9, "text_style"

    const-string v10, "linear_timetext"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/aod/category/CategoryFactory;->sClockCategory:[Ljava/lang/String;

    return-void
.end method

.method public static createStyleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;
    .locals 3

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/aod/category/CategoryConstants;->getDefaultCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "{}"

    invoke-static {p0, p1, v1}, Lcom/miui/aod/util/CategoryPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1, p0}, Lcom/miui/aod/common/StyleInfo;->initConfig(Landroid/content/Context;)V

    return-object p1
.end method

.method public static createStyleInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;
    .locals 1

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/aod/category/CategoryConstants;->getDefaultCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{}"

    :cond_0
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/common/StyleInfo;

    return-object p0
.end method

.method public static getAodCategoryCount()I
    .locals 1

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sClockCategory:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static getAodCategoryName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sClockCategory:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getCategoriesGson()Lcom/google/gson/Gson;
    .locals 6

    const-class v0, Lcom/miui/aod/common/StyleInfo;

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/miui/aod/util/RuntimeTypeAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;)Lcom/miui/aod/util/RuntimeTypeAdapterFactory;

    move-result-object v0

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sClockCategory:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/miui/aod/category/CategoryFactory;->sCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Lcom/miui/aod/util/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/miui/aod/util/RuntimeTypeAdapterFactory;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static getPresetStyleInfo(Ljava/lang/String;)Lcom/miui/aod/common/StyleInfo;
    .locals 1

    sget-object v0, Lcom/miui/aod/category/CategoryFactory;->sPresetStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/common/StyleInfo;

    return-object p0
.end method
