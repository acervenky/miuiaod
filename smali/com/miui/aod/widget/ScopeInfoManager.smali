.class public Lcom/miui/aod/widget/ScopeInfoManager;
.super Ljava/lang/Object;
.source "ScopeInfoManager.java"


# static fields
.field private static final sFrameInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/aod/widget/ScopeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_a"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f020270

    const v4, 0x7f020271

    const v5, 0x7f090085

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_b"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f020272

    const v4, 0x7f020273

    const v5, 0x7f090086

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_c"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f020274

    const v4, 0x7f020275

    const v5, 0x7f090087

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_d"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f020276

    const v4, 0x7f020277

    const v5, 0x7f090088

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_e"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f020278

    const v4, 0x7f020279

    const v5, 0x7f090089

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_f"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f02027a

    const v4, 0x7f02027b

    const v5, 0x7f09008a

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_g"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f02027c

    const v4, 0x7f02027d

    const v5, 0x7f09008b

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    const-string v1, "scope_h"

    new-instance v2, Lcom/miui/aod/widget/ScopeInfo;

    const v3, 0x7f02027e

    const v4, 0x7f02027f

    const v5, 0x7f09008c

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/aod/widget/ScopeInfo;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_a"

    const v2, 0x7f020271

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_b"

    const v2, 0x7f020273

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_c"

    const v2, 0x7f020275

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_d"

    const v2, 0x7f020277

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_e"

    const v2, 0x7f020279

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_f"

    const v2, 0x7f02027b

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_g"

    const v2, 0x7f02027d

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/aod/components/DrawableData;

    const-string v1, "scope_h"

    const v2, 0x7f02027f

    invoke-direct {v0, v2, v1}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static getFrameAnimationInfoByStyleName(Ljava/lang/String;)Lcom/miui/aod/widget/ScopeInfo;
    .locals 1

    sget-object v0, Lcom/miui/aod/widget/ScopeInfoManager;->sFrameInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/widget/ScopeInfo;

    return-object p0
.end method
