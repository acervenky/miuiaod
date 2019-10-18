.class public Lcom/miui/aod/resource/ImagePool;
.super Ljava/lang/Object;
.source "ImagePool.java"


# static fields
.field public static final sAlignTypeDrawableData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/resource/DrawableGravityData;",
            ">;"
        }
    .end annotation
.end field

.field public static final sBgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    invoke-static {}, Lcom/miui/aod/category/CategoryConstants;->isHighPerformance()Z

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "paint"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f020076

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f020078

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "tree"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f020084

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f020086

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "spirit"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f02007d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f02007f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "succulent"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f020080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f020082

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "cactus"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f02006f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f020071

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "shadow"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f020079

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f02007a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "moonlight"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f020074

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f020075

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "ghost"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f020072

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f020073

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    const-string v1, "spaceman"

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f02007b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f02007c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/resource/DrawableGravityData;

    const v2, 0x7f020295

    const/16 v3, 0x203

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/resource/DrawableGravityData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/resource/DrawableGravityData;

    const v2, 0x7f020292

    const/16 v3, 0x201

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/resource/DrawableGravityData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/resource/DrawableGravityData;

    const v2, 0x7f020298

    const/16 v3, 0x205

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/resource/DrawableGravityData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/resource/DrawableGravityData;

    const v2, 0x7f02028c

    const/16 v3, 0x403

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/resource/DrawableGravityData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/resource/DrawableGravityData;

    const v2, 0x7f020289

    const/16 v3, 0x401

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/resource/DrawableGravityData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/resource/DrawableGravityData;

    const v2, 0x7f02028f

    const/16 v3, 0x405

    invoke-direct {v1, v2, v3}, Lcom/miui/aod/resource/DrawableGravityData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getDrawableIndexByGravity(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/resource/DrawableGravityData;

    iget v1, v1, Lcom/miui/aod/resource/DrawableGravityData;->gravity:I

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getImageRes(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getImageThumbnailRes(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/resource/ImagePool;->sBgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
