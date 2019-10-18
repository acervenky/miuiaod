.class public Lcom/miui/aod/widget/notification/NotificationStyleManager;
.super Ljava/lang/Object;
.source "NotificationStyleManager.java"


# static fields
.field private static CONSTRUCTOR_PARAMS:[Ljava/lang/Class; = null

.field private static final KEY_ANIMATION_STYLE:Ljava/lang/String; = "notification_animation_style"

.field public static final PARTICLE_WAVE_ARRAY:[I

.field public static final STYLE_NAME_BLUE_LINE:Ljava/lang/String; = "blue_wave"

.field public static final STYLE_NAME_GREEN_WAVE:Ljava/lang/String; = "green_wave"

.field public static final STYLE_NAME_NONE:Ljava/lang/String; = "none"

.field public static final STYLE_NAME_PARTICLE_WAVE:Ljava/lang/String; = "particle_wave"

.field public static final STYLE_NAME_RED_WAVE:Ljava/lang/String; = "red_wave"

.field public static final STYLE_NAME_SCREEN_ON:Ljava/lang/String; = "screen_on"

.field private static final TAG:Ljava/lang/String; = "NotificationStyleManage"

.field private static sConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sFrameAnimationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static sStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sStyleNameList:Ljava/util/List;
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

    sput-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sFrameAnimationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sConstructors:Ljava/util/Map;

    const/16 v0, 0x5b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->PARTICLE_WAVE_ARRAY:[I

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "none"

    const v3, 0x7f020203

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "screen_on"

    const v3, 0x7f020280

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "blue_wave"

    const v3, 0x7f0201d5

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "red_wave"

    const v3, 0x7f02026f

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    new-instance v1, Lcom/miui/aod/components/DrawableData;

    const-string v2, "particle_wave"

    const v3, 0x7f02026a

    invoke-direct {v1, v3, v2}, Lcom/miui/aod/components/DrawableData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sFrameAnimationMap:Ljava/util/Map;

    const-string v1, "green_wave"

    sget-object v2, Lcom/miui/aod/widget/notification/NotificationStyleManager;->PARTICLE_WAVE_ARRAY:[I

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sFrameAnimationMap:Ljava/util/Map;

    const-string v1, "particle_wave"

    sget-object v2, Lcom/miui/aod/widget/notification/NotificationStyleManager;->PARTICLE_WAVE_ARRAY:[I

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    const-string v1, "blue_wave"

    const-class v2, Lcom/miui/aod/widget/notification/WaveLineDrawer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    const-string v1, "red_wave"

    const-class v2, Lcom/miui/aod/widget/notification/RedWaveDrawer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    const-string v1, "green_wave"

    const-class v2, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    const-string v1, "particle_wave"

    const-class v2, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02020f
        0x7f02021a
        0x7f020225
        0x7f020230
        0x7f02023b
        0x7f020246
        0x7f020251
        0x7f02025c
        0x7f020267
        0x7f020210
        0x7f020211
        0x7f020212
        0x7f020213
        0x7f020214
        0x7f020215
        0x7f020216
        0x7f020217
        0x7f020218
        0x7f020219
        0x7f02021b
        0x7f02021c
        0x7f02021d
        0x7f02021e
        0x7f02021f
        0x7f020220
        0x7f020221
        0x7f020222
        0x7f020223
        0x7f020224
        0x7f020226
        0x7f020227
        0x7f020228
        0x7f020229
        0x7f02022a
        0x7f02022b
        0x7f02022c
        0x7f02022d
        0x7f02022e
        0x7f02022f
        0x7f020231
        0x7f020232
        0x7f020233
        0x7f020234
        0x7f020235
        0x7f020236
        0x7f020237
        0x7f020238
        0x7f020239
        0x7f02023a
        0x7f02023c
        0x7f02023d
        0x7f02023e
        0x7f02023f
        0x7f020240
        0x7f020241
        0x7f020242
        0x7f020243
        0x7f020244
        0x7f020245
        0x7f020247
        0x7f020248
        0x7f020249
        0x7f02024a
        0x7f02024b
        0x7f02024c
        0x7f02024d
        0x7f02024e
        0x7f02024f
        0x7f020250
        0x7f020252
        0x7f020253
        0x7f020254
        0x7f020255
        0x7f020256
        0x7f020257
        0x7f020258
        0x7f020259
        0x7f02025a
        0x7f02025b
        0x7f02025d
        0x7f02025e
        0x7f02025f
        0x7f020260
        0x7f020261
        0x7f020262
        0x7f020263
        0x7f020264
        0x7f020265
        0x7f020266
        0x7f020268
        0x7f020269
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimationDrawer(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    sget-object v1, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    sget-object v2, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sConstructors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/miui/aod/widget/notification/NotificationStyleManager;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v4, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sConstructors:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NotificationStyleManage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not inflate subclass "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object p0, v0

    :goto_0
    instance-of v0, p0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sFrameAnimationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;

    invoke-virtual {v0, p1}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->setFrameArray([I)V

    invoke-virtual {v0}, Lcom/miui/aod/widget/notification/NotificationFrameAnimationDrawer;->startAnimation()V

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getDrawbleTitle(Landroid/content/Context;Lcom/miui/aod/components/DrawableData;)Ljava/lang/String;
    .locals 2

    const-string v0, "none"

    iget-object v1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f090043

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "screen_on"

    iget-object v1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f090044

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "blue_wave"

    iget-object v1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f090041

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "red_wave"

    iget-object v1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f090040

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "particle_wave"

    iget-object p1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f090042

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public static getSelectedStyleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "notification_animation_style"

    const-string v1, "blue_wave"

    invoke-static {p0, v0, v1}, Lcom/miui/aod/util/CategoryPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStyleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/aod/widget/notification/NotificationStyleManager;->sStyleNameList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setSelectedStyleName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "notification_animation_style"

    invoke-static {p0, v0, p1}, Lcom/miui/aod/util/CategoryPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
