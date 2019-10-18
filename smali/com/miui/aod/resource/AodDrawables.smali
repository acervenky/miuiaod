.class public Lcom/miui/aod/resource/AodDrawables;
.super Ljava/lang/Object;
.source "AodDrawables.java"


# static fields
.field public static s24GradientDrawableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation
.end field

.field private static sGradientDrawableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation
.end field

.field private static sImageDrawableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation
.end field

.field public static sLabelDrawables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sPureDrawableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/AodDrawables;->sDrawableMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/AodDrawables;->sLabelDrawables:Landroid/util/ArrayMap;

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_1"

    const v3, 0x7f020150

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_2"

    const v3, 0x7f020153

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_3"

    const v3, 0x7f020154

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_4"

    const v3, 0x7f020155

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_5"

    const v3, 0x7f020156

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_5_1"

    const v3, 0x7f020157

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_6"

    const v3, 0x7f020158

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_6_1"

    const v3, 0x7f020159

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_7"

    const v3, 0x7f02015a

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_8"

    const v3, 0x7f02015b

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_9"

    const v3, 0x7f02015c

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_10"

    const v3, 0x7f020151

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_gradient_11"

    const v3, 0x7f020152

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_1"

    const v3, 0x7f0f000b

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_12"

    const v3, 0x7f0f000e

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_13"

    const v3, 0x7f0f000f

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_14"

    const v3, 0x7f0f0010

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_15"

    const v3, 0x7f0f0011

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_16"

    const v3, 0x7f0f0012

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_17"

    const v3, 0x7f0f0013

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_18"

    const v3, 0x7f0f0014

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_19"

    const v3, 0x7f0f0015

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_20"

    const v3, 0x7f0f0017

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_2"

    const v3, 0x7f0f0016

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_3"

    const v3, 0x7f0f0018

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_4"

    const v3, 0x7f0f0019

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_5"

    const v3, 0x7f0f001a

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_6"

    const v3, 0x7f0f001b

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_7"

    const v3, 0x7f0f001c

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_8"

    const v3, 0x7f0f001d

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_9"

    const v3, 0x7f0f001e

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_10"

    const v3, 0x7f0f000c

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "aod_pure_color_11"

    const v3, 0x7f0f000d

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020055

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020056

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020061

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020066

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020067

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020068

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020069

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02006a

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02006b

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02006c

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020057

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020058

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020059

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02005a

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02005b

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02005c

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02005d

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02005e

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f02005f

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020060

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020062

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020063

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020064

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const v2, 0x7f020065

    invoke-direct {v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "tree"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "tree"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "spirit"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "spirit"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "succulent"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "succulent"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "cactus"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cactus"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "ghost"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ghost"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "spaceman"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "spaceman"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "paint"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "paint"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "shadow"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "shadow"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "moonlight"

    invoke-static {v2}, Lcom/miui/aod/resource/ImagePool;->getImageRes(Ljava/lang/String;)I

    move-result v2

    const-string v3, "moonlight"

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sLabelDrawables:Landroid/util/ArrayMap;

    const-string v1, "label_single_motion"

    const v2, 0x7f0201fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sLabelDrawables:Landroid/util/ArrayMap;

    const-string v1, "label_series"

    const v2, 0x7f0201f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sLabelDrawables:Landroid/util/ArrayMap;

    const-string v1, "label_single_24h"

    const v2, 0x7f0201f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/aod/resource/AodDrawables;->fillMap(Ljava/util/Collection;)V

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/aod/resource/AodDrawables;->fillMap(Ljava/util/Collection;)V

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sImageDrawableList:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/aod/resource/AodDrawables;->fillMap(Ljava/util/Collection;)V

    return-void
.end method

.method public static containsDrawableData(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sDrawableMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static fillMap(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/DrawableData;

    sget-object v1, Lcom/miui/aod/resource/AodDrawables;->sDrawableMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get24GradientDrawableRes()I
    .locals 2

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->s24GradientDrawableList:Ljava/util/List;

    invoke-static {}, Lcom/miui/aod/widget/SunSelector;->getDrawableIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/DrawableData;

    iget v0, v0, Lcom/miui/aod/components/DrawableData;->mResId:I

    return v0
.end method

.method public static getDrawableDataByName(Ljava/lang/String;)Lcom/miui/aod/components/DrawableData;
    .locals 1

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sDrawableMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/components/DrawableData;

    return-object p0
.end method

.method public static getDrawableForMask(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public static getDrawableListByCateName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "oneline"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "tree"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "tree"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "spaceman"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "spaceman"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "spirit"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "spirit"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "succulent"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "succulent"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "cactus"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cactus"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "ghost"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ghost"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "paint_vertical"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "moonlight"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "moonlight"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "paint"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paint"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "shadow"

    invoke-static {v1}, Lcom/miui/aod/resource/ImagePool;->getImageThumbnailRes(Ljava/lang/String;)I

    move-result v1

    const-string v2, "shadow"

    invoke-direct {p0, v1, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getGradientDrawables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sGradientDrawableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPureDrawables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isPureColor(I)Z
    .locals 2

    sget-object v0, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/components/DrawableData;

    iget v1, v1, Lcom/miui/aod/components/DrawableData;->mResId:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static translateColorNameFromOldVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "white"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "blue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "aod_gradient_1"

    return-object p0

    :cond_1
    const-string v0, "pink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "aod_gradient_2"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "aod_pure_color_1"

    return-object p0
.end method
